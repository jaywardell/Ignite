//
//  ToggleElementVisiblity.swift
//  Ignite
//
//  Created by Dorian on 27/01/2025.
//

import Foundation

/// Toggles an element's visibility by adding or removing the "d-none" CSS class.
public struct ToggleElementVisibility: Action {
    /// The unique identifier of the element we're trying to show/hide.
    var id: String

    /// Creates a new ToggleElementVisibility action from a specific page element ID.
    /// - Parameter id: The unique identifier of the element we're trying to show/hide.
    public init(_ id: String) {
        self.id = id
    }

    public func compile() -> String {
        "document.getElementById('\(id)').classList.toggle('d-none')"
    }
}

