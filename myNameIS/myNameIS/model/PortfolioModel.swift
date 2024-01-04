//
//  PortfolioModel.swift
//  myNameIS
//
//  Created by oobin on 1/4/24.
//

import Foundation


class PortfolioModel {
    
    enum ProjectType {
        case git
        case doc
        case app
    }
    
    struct Project {
        var projectName: String
        var url: String
        var type: ProjectType
    }
    
    var projects: [Project]

    init() {
        projects = [
            Project(projectName: "프로젝트 1", url: "https://example.com/project1", type: .git),
            Project(projectName: "프로젝트 2", url: "https://example.com/project2", type: .doc),
            Project(projectName: "프로젝트 3", url: "https://example.com/project3", type: .app)
        ]
    }
}
