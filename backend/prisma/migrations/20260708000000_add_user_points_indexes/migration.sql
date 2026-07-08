-- Indexes to support leaderboard ordering and rank COUNT queries that
-- filter/sort on points, optionally scoped by branch / year / college.
CREATE INDEX "User_points_idx" ON "User"("points");
CREATE INDEX "User_branch_points_idx" ON "User"("branch", "points");
CREATE INDEX "User_year_points_idx" ON "User"("year", "points");
CREATE INDEX "User_college_points_idx" ON "User"("college", "points");
