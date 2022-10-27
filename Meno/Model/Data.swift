//
//  Data.swift
//  Meno
//
//  Created by Giulio on 25/10/22.

import Foundation

var trip0 = Trip (icon: "heart.fill",
                  destination: "Florence",
                  departureDate: Date.distantPast,
                  returnDate: Date.distantFuture,
                  bagSize: "small"
)

var trip1 = Trip (icon: "airplane",
                  destination: "New Orleans",
                  departureDate: Date.now,
                  returnDate: Date.distantFuture,
                  bagSize: "medium"
//                  bagSize: bagSize.large
)

var trip2 = Trip (icon: "bag.fill",
                  destination: "New York",
                  departureDate: Date.now,
                  returnDate: Date.distantFuture,
                  bagSize: "small"
)

