.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasureResult;


# instance fields
.field public final synthetic $alignmentLines:Ljava/util/Map;

.field public final synthetic $height:I

.field public final synthetic $placementBlock:Lkotlin/jvm/functions/Function1;

.field public final synthetic $width:I

.field public final synthetic this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

.field public final synthetic this$1:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method public constructor <init>(IILjava/util/Map;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->$width:I

    iput p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->$height:I

    iput-object p3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->$alignmentLines:Ljava/util/Map;

    iput-object p4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    iput-object p5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->this$1:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iput-object p6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->$placementBlock:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getAlignmentLines()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->$alignmentLines:Ljava/util/Map;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->$height:I

    return p0
.end method

.method public final getRulers()Lkotlin/jvm/functions/Function1;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->$width:I

    return p0
.end method

.method public final placeChildren()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->this$1:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget-object v0, v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->isLookingAhead()Z

    move-result v1

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope$layout$1;->$placementBlock:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v1, v1, Landroidx/compose/ui/node/InnerNodeCoordinator;->lookaheadDelegate:Landroidx/compose/ui/node/InnerNodeCoordinator$LookaheadDelegateImpl;

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->placementScope:Landroidx/compose/ui/layout/OuterPlacementScope;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->placementScope:Landroidx/compose/ui/layout/OuterPlacementScope;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
