import { PrismaClient } from "@prisma/client";
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const prisma = new PrismaClient();

async function main() {
  console.log("Starting database seeding...");

  // 1. Read mock data
  const mockPath = path.join(__dirname, "seedData", "mock_striver_detail.json");
  if (!fs.existsSync(mockPath)) {
    throw new Error(`Mock data file not found at: ${mockPath}`);
  }

  const fileContent = fs.readFileSync(mockPath, "utf-8");
  const { sheet } = JSON.parse(fileContent);

  console.log(`Loaded sheet: ${sheet.name} (${sheet.totalProblems} problems)`);

  // 2. Upsert the main Sheet record
  await prisma.sheet.upsert({
    where: { slug: sheet.slug },
    update: {
      name: sheet.name,
      description: sheet.description,
      author: sheet.author,
      sourceUrl: sheet.sourceUrl,
      totalProblems: sheet.totalProblems,
    },
    create: {
      id: "striver_a2z_sheet_id",
      slug: sheet.slug,
      name: sheet.name,
      description: sheet.description,
      author: sheet.author,
      sourceUrl: sheet.sourceUrl,
      totalProblems: sheet.totalProblems,
    },
  });
  console.log(`Upserted Sheet record: ${sheet.slug}`);

  // 3. Keep track of created/updated categories and subcategories
  let sectionCount = 0;
  let problemCount = 0;

  for (const cat of sheet.sections) {
    const catId = `striver_${cat.id}`;
    // Upsert Category (top-level section, parentId = null)
    await prisma.sheetSection.upsert({
      where: { id: catId },
      update: {
        title: cat.title,
        order: cat.order,
        parentId: null,
      },
      create: {
        id: catId,
        sheetId: "striver_a2z_sheet_id",
        title: cat.title,
        order: cat.order,
        parentId: null,
      },
    });
    sectionCount++;

    // Upsert Subcategories & Problems
    for (const sub of cat.children || []) {
      const subId = `striver_${sub.id}`;
      await prisma.sheetSection.upsert({
        where: { id: subId },
        update: {
          title: sub.title,
          order: sub.order,
          parentId: catId,
        },
        create: {
          id: subId,
          sheetId: "striver_a2z_sheet_id",
          title: sub.title,
          order: sub.order,
          parentId: catId,
        },
      });
      sectionCount++;

      // Upsert Problems under this subcategory
      for (const prob of sub.problems || []) {
        const probId = `striver_${prob.id}`;
        
        let difficulty = "EASY";
        if (prob.difficulty === "MEDIUM" || prob.difficulty === "HARD") {
          difficulty = prob.difficulty;
        }

        await prisma.sheetProblem.upsert({
          where: { id: probId },
          update: {
            title: prob.title,
            order: prob.order,
            difficulty: difficulty,
            articleUrl: prob.articleUrl || null,
            youtubeUrl: prob.youtubeUrl || null,
            practiceUrl: prob.practiceUrl || null,
            plusUrl: prob.plusUrl || null,
            editorialUrl: prob.editorialUrl || null,
          },
          create: {
            id: probId,
            sheetId: "striver_a2z_sheet_id",
            sectionId: subId,
            title: prob.title,
            order: prob.order,
            difficulty: difficulty,
            articleUrl: prob.articleUrl || null,
            youtubeUrl: prob.youtubeUrl || null,
            practiceUrl: prob.practiceUrl || null,
            plusUrl: prob.plusUrl || null,
            editorialUrl: prob.editorialUrl || null,
          },
        });
        problemCount++;
      }
    }
  }

  console.log(`Database seeding completed successfully!`);
  console.log(`Upserted ${sectionCount} sheet sections.`);
  console.log(`Upserted ${problemCount} sheet problems.`);
}

main()
  .catch((e) => {
    console.error("Error during database seeding:", e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
