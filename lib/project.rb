class Project
attr_reader :title, :backed_projects

def initialize(title)
    @title=title
end 
def add_backer(backer)
    ProjectBacker.new(self, backer)
end

def backers
    pbs = ProjectBacker.all.select {|pb| pb.project == self}	
    pbs.map {|pb| pb.backer}	
  end
end