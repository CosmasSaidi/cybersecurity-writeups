# Cisco Packet Tracer Enterprise LAN Design and Segmentation

## Overview

This writeup documents weekly hands-on progress building and validating enterprise-style LAN infrastructure in Cisco Packet Tracer. The focus was practical network design, segmentation, Layer 2 and Layer 3 switching, and connectivity troubleshooting.

## Scope

- Build multi-switch enterprise LAN topologies
- Segment departmental traffic with VLANs
- Configure trunking and inter-VLAN routing
- Validate end-to-end communication and switching behavior
- Perform baseline troubleshooting and fault isolation

## Enterprise Network Design

- Built enterprise LAN topology with multiple access switches uplinked to a Layer 3 switch.
- Structured logical segmentation by department using dedicated VLANs.
- Applied consistent device naming for maintainable network documentation.

## Device Configuration

Configured and validated:

- Cisco Layer 2 switches
- Cisco Layer 3 switches
- End-user workstations

Performed:

- Hostname configuration
- Interface configuration
- IPv4 addressing
- Basic management setup
- Connectivity verification

## VLAN and Trunking Implementation

Implemented segmentation and transport controls:

- Created multiple VLANs for departmental isolation
- Assigned access ports to the correct VLANs
- Configured IEEE 802.1Q trunk links between switches
- Extended VLANs across the switched enterprise topology

## Layer 3 Switching and Inter-VLAN Routing

- Created Switch Virtual Interfaces (SVIs) on the Layer 3 switch.
- Assigned gateway IPs per VLAN through SVIs.
- Enabled and validated inter-VLAN routing for controlled cross-segment communication.

## Switching and Forwarding Behavior

Observed and validated core switching concepts:

- MAC address learning
- MAC address table population
- Frame forwarding decisions
- Broadcast-domain boundaries under VLAN segmentation
- Layer 2 switching and Layer 3 switching behavior

## Connectivity Validation and Troubleshooting

Validated and troubleshot using:

- ICMP testing (ping)
- ARP resolution checks
- End-to-end host communication tests
- Basic fault isolation for addressing, VLAN assignment, and trunking issues

## Topologies Built

- Star topology
- Multi-switch enterprise LAN topology
- Department-based segmented network design

## Enterprise Networking Competencies Strengthened

- TCP/IP networking
- IPv4 addressing and subnetting
- Enterprise LAN design and segmentation
- Routing and switching fundamentals
- VLAN architecture and trunking
- Network documentation discipline
- Practical network troubleshooting

## Technologies and Tools Used

- Cisco Packet Tracer
- Cisco Layer 2 switches
- Cisco Layer 3 switches
- VLANs
- IEEE 802.1Q trunking
- Switch Virtual Interfaces (SVIs)
- Inter-VLAN routing
- TCP/IP
- IPv4 addressing
- ARP
- ICMP
- MAC address tables
- Enterprise LAN architecture

## Outcome

This lab cycle improved operational confidence in enterprise switching, segmentation, and routing workflows, and strengthened practical readiness for network security and infrastructure-focused roles.
