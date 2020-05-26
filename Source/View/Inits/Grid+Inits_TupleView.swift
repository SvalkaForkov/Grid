//
//  Grid+Inits_TupleView.swift
//  ExyteGrid
//
//  Created by Denis Obukhov on 18.04.2020.
//  Copyright © 2020 Exyte. All rights reserved.
//

// swiftlint:disable large_tuple line_length

import SwiftUI

extension Grid {
    public init(tracks: [GridTrack], contentMode: GridContentMode? = nil, flow: GridFlow? = nil, packing: GridPacking? = nil, spacing: GridSpacing = Constants.defaultSpacing, @AnyViewBuilder content: () -> GridGroup)  {
        
        self.trackSizes = tracks
        self.spacing = spacing
        self.internalContentMode = contentMode
        self.internalFlow = flow
        self.internalPacking = packing
        
        self.items =
                content()
                .contentViews
                .enumerated()
                .map { GridItem($0.element, id: AnyHashable($0.offset)) }
        
//        let content = content()
//        var index = 0
//        var items: [GridItem] = []
//        items.append(contentsOf: content.value.0.asGridItems(index: &index))
//        items.append(contentsOf: content.value.1.asGridItems(index: &index))
//        self.items = items
    }
    
    
    /*
    public init<C0: View, C1: View>(tracks: [GridTrack], contentMode: GridContentMode? = nil, flow: GridFlow? = nil, packing: GridPacking? = nil, spacing: GridSpacing = Constants.defaultSpacing, @ViewBuilder content: () -> Content) where Content == TupleView<(C0, C1)> {
        self.trackSizes = tracks
        self.spacing = spacing
        self.internalContentMode = contentMode
        self.internalFlow = flow
        self.internalPacking = packing
        
        let content = content()
        var index = 0
        var items: [GridItem] = []
        items.append(contentsOf: content.value.0.asGridItems(index: &index))
        items.append(contentsOf: content.value.1.asGridItems(index: &index))
        self.items = items
    }
    
    public init<C0: View, C1: View, C2: View>(tracks: [GridTrack], contentMode: GridContentMode? = nil, flow: GridFlow? = nil, packing: GridPacking? = nil, spacing: GridSpacing = Constants.defaultSpacing, @ViewBuilder content: () -> Content) where Content == TupleView<(C0, C1, C2)> {
        self.trackSizes = tracks
        self.spacing = spacing
        self.internalContentMode = contentMode
        self.internalFlow = flow
        self.internalPacking = packing
        
        let content = content()
        var index = 0
        var items: [GridItem] = []
        items.append(contentsOf: content.value.0.asGridItems(index: &index))
        items.append(contentsOf: content.value.1.asGridItems(index: &index))
        items.append(contentsOf: content.value.2.asGridItems(index: &index))
        self.items = items
    }
    
    public init<C0: View, C1: View, C2: View, C3: View>(tracks: [GridTrack], contentMode: GridContentMode? = nil, flow: GridFlow? = nil, packing: GridPacking? = nil, spacing: GridSpacing = Constants.defaultSpacing, @ViewBuilder content: () -> Content) where Content == TupleView<(C0, C1, C2, C3)> {
        self.trackSizes = tracks
        self.spacing = spacing
        self.internalContentMode = contentMode
        self.internalFlow = flow
        self.internalPacking = packing
        
        let content = content()
        var index = 0
        var items: [GridItem] = []
        items.append(contentsOf: content.value.0.asGridItems(index: &index))
        items.append(contentsOf: content.value.1.asGridItems(index: &index))
        items.append(contentsOf: content.value.2.asGridItems(index: &index))
        items.append(contentsOf: content.value.3.asGridItems(index: &index))
        self.items = items
    }
    
    public init<C0: View, C1: View, C2: View, C3: View, C4: View>(tracks: [GridTrack], contentMode: GridContentMode? = nil, flow: GridFlow? = nil, packing: GridPacking? = nil, spacing: GridSpacing = Constants.defaultSpacing, @ViewBuilder content: () -> Content) where Content == TupleView<(C0, C1, C2, C3, C4)> {
        self.trackSizes = tracks
        self.spacing = spacing
        self.internalContentMode = contentMode
        self.internalFlow = flow
        self.internalPacking = packing
        
        let content = content()
        var index = 0
        var items: [GridItem] = []
        items.append(contentsOf: content.value.0.asGridItems(index: &index))
        items.append(contentsOf: content.value.1.asGridItems(index: &index))
        items.append(contentsOf: content.value.2.asGridItems(index: &index))
        items.append(contentsOf: content.value.3.asGridItems(index: &index))
        items.append(contentsOf: content.value.4.asGridItems(index: &index))
        self.items = items
    }
    
    public init<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View>(tracks: [GridTrack], contentMode: GridContentMode? = nil, flow: GridFlow? = nil, packing: GridPacking? = nil, spacing: GridSpacing = Constants.defaultSpacing, @ViewBuilder content: () -> Content) where Content == TupleView<(C0, C1, C2, C3, C4, C5)> {
        self.trackSizes = tracks
        self.spacing = spacing
        self.internalContentMode = contentMode
        self.internalFlow = flow
        self.internalPacking = packing
        
        let content = content()
        var index = 0
        var items: [GridItem] = []
        items.append(contentsOf: content.value.0.asGridItems(index: &index))
        items.append(contentsOf: content.value.1.asGridItems(index: &index))
        items.append(contentsOf: content.value.2.asGridItems(index: &index))
        items.append(contentsOf: content.value.3.asGridItems(index: &index))
        items.append(contentsOf: content.value.4.asGridItems(index: &index))
        items.append(contentsOf: content.value.5.asGridItems(index: &index))
        self.items = items
    }
    
    public init<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View>(tracks: [GridTrack], contentMode: GridContentMode? = nil, flow: GridFlow? = nil, packing: GridPacking? = nil, spacing: GridSpacing = Constants.defaultSpacing, @ViewBuilder content: () -> Content) where Content == TupleView<(C0, C1, C2, C3, C4, C5, C6)> {
        self.trackSizes = tracks
        self.spacing = spacing
        self.internalContentMode = contentMode
        self.internalFlow = flow
        self.internalPacking = packing
        
        let content = content()
        var index = 0
        var items: [GridItem] = []
        items.append(contentsOf: content.value.0.asGridItems(index: &index))
        items.append(contentsOf: content.value.1.asGridItems(index: &index))
        items.append(contentsOf: content.value.2.asGridItems(index: &index))
        items.append(contentsOf: content.value.3.asGridItems(index: &index))
        items.append(contentsOf: content.value.4.asGridItems(index: &index))
        items.append(contentsOf: content.value.5.asGridItems(index: &index))
        items.append(contentsOf: content.value.6.asGridItems(index: &index))
        self.items = items
    }
    
    public init<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View>(tracks: [GridTrack], contentMode: GridContentMode? = nil, flow: GridFlow? = nil, packing: GridPacking? = nil, spacing: GridSpacing = Constants.defaultSpacing, @ViewBuilder content: () -> Content) where Content == TupleView<(C0, C1, C2, C3, C4, C5, C6, C7)> {
        self.trackSizes = tracks
        self.spacing = spacing
        self.internalContentMode = contentMode
        self.internalFlow = flow
        self.internalPacking = packing
        
        let content = content()
        var index = 0
        var items: [GridItem] = []
        items.append(contentsOf: content.value.0.asGridItems(index: &index))
        items.append(contentsOf: content.value.1.asGridItems(index: &index))
        items.append(contentsOf: content.value.2.asGridItems(index: &index))
        items.append(contentsOf: content.value.3.asGridItems(index: &index))
        items.append(contentsOf: content.value.4.asGridItems(index: &index))
        items.append(contentsOf: content.value.5.asGridItems(index: &index))
        items.append(contentsOf: content.value.6.asGridItems(index: &index))
        items.append(contentsOf: content.value.7.asGridItems(index: &index))

        self.items = items
    }
    
    public init<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View>(tracks: [GridTrack], contentMode: GridContentMode? = nil, flow: GridFlow? = nil, packing: GridPacking? = nil, spacing: GridSpacing = Constants.defaultSpacing, @ViewBuilder content: () -> Content) where Content == TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8)> {
        self.trackSizes = tracks
        self.spacing = spacing
        self.internalContentMode = contentMode
        self.internalFlow = flow
        self.internalPacking = packing
        
        let content = content()
        var index = 0
        var items: [GridItem] = []
        items.append(contentsOf: content.value.0.asGridItems(index: &index))
        items.append(contentsOf: content.value.1.asGridItems(index: &index))
        items.append(contentsOf: content.value.2.asGridItems(index: &index))
        items.append(contentsOf: content.value.3.asGridItems(index: &index))
        items.append(contentsOf: content.value.4.asGridItems(index: &index))
        items.append(contentsOf: content.value.5.asGridItems(index: &index))
        items.append(contentsOf: content.value.6.asGridItems(index: &index))
        items.append(contentsOf: content.value.7.asGridItems(index: &index))
        items.append(contentsOf: content.value.8.asGridItems(index: &index))
        self.items = items
    }
    
    public init<C0: View, C1: View, C2: View, C3: View, C4: View, C5: View, C6: View, C7: View, C8: View, C9: View>(tracks: [GridTrack], contentMode: GridContentMode? = nil, flow: GridFlow? = nil, packing: GridPacking? = nil, spacing: GridSpacing = Constants.defaultSpacing, @ViewBuilder content: () -> Content) where Content == TupleView<(C0, C1, C2, C3, C4, C5, C6, C7, C8, C9)> {
        self.trackSizes = tracks
        self.spacing = spacing
        self.internalContentMode = contentMode
        self.internalFlow = flow
        self.internalPacking = packing
        
        let content = content()
        var index = 0
        var items: [GridItem] = []
        items.append(contentsOf: content.value.0.asGridItems(index: &index))
        items.append(contentsOf: content.value.1.asGridItems(index: &index))
        items.append(contentsOf: content.value.2.asGridItems(index: &index))
        items.append(contentsOf: content.value.3.asGridItems(index: &index))
        items.append(contentsOf: content.value.4.asGridItems(index: &index))
        items.append(contentsOf: content.value.5.asGridItems(index: &index))
        items.append(contentsOf: content.value.6.asGridItems(index: &index))
        items.append(contentsOf: content.value.7.asGridItems(index: &index))
        items.append(contentsOf: content.value.8.asGridItems(index: &index))
        items.append(contentsOf: content.value.9.asGridItems(index: &index))
        self.items = items
    }*/
}