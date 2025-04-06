class ClassroomsController < ApplicationController

  before_action :temp_method

  def index
    @classroomId = params[:id]
    @classroom = UserClassroom.find(@classroomId)
 
  end
  def assignment
    @assignments = [
      {
        title: "Introduction to Digital Circuits",
        description: "Learn the basics of digital circuits, including logic gates and Boolean algebra.",
        deadline: "08/04/2025",
        type: "single"
      },
      {
        title: "Combinational Logic Design",
        description: "Design and implement combinational logic circuits using various techniques.",
        deadline: "31/04/2025",
        type: "single"
      }
    ]
  end

  def group_assignment
    @group_assignments = [
      {
        title: "Introduction to Digital Circuits",
        description: "Learn the basics of digital circuits, including logic gates and Boolean algebra.",
        deadline: "08/04/2025",
        type: "group",
        max_group_size: 3
      },
      {
        title: "Combinational Logic Design",
        description: "Design and implement combinational logic circuits using various techniques.",
        deadline: "31/04/2025",
        type: "group",
        max_group_size: 5
      }
    ]
  end

  def self_group
    @self_groups = [
      {
        group_name: "CICADA-3301",
        description: "Group for building optimized circuit for 7segment display",
        members: "Ramesh, John, Jitender"
      }
    ]
  end

  def learning_content
    @learning_contents = [
      {
        title: "7-Segment Display",
        description: "Learn how to use a 7-segment display in your digital circuits.",
        url: "https://youtu.be/_JbHhfZvfGU?si=0r6rQ-brC8EfbWyq"
      },
      {
        title: "Flip-Flops",
        description: "Understand the working of flip-flops and their applications.",
        url: "https://youtu.be/LTtuYeSmJ2g?si=DsVLxwqMj6qXxSix"
      }
    ]
  end


  def temp_method
    @role = UserClassroom.find(params[:id]).role
    @id = params[:id]
  end


end
