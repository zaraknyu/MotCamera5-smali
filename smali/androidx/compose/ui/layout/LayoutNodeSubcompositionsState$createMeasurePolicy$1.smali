.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;
.super Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;
.source "SourceFile"


# instance fields
.field public final synthetic $block:Lkotlin/jvm/functions/Function2;

.field public final synthetic this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->$block:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 6

    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget-object p2, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->scope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    iput-object v0, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v0

    iput v0, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->density:F

    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result v0

    iput v0, p2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$Scope;->fontScale:F

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result p1

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1;->$block:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    if-eqz p1, :cond_0

    iput v0, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentApproachIndex:I

    iget-object p1, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->approachMeasureScope:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$ApproachMeasureScopeImpl;

    new-instance p2, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {p2, p3, p4}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/layout/MeasureResult;

    iget v3, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentApproachIndex:I

    new-instance v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;

    const/4 v5, 0x0

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;-><init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;ILandroidx/compose/ui/layout/MeasureResult;I)V

    return-object v0

    :cond_0
    iput v0, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    new-instance p1, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {p1, p3, p4}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/layout/MeasureResult;

    iget v3, v2, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->currentIndex:I

    new-instance v0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;

    const/4 v5, 0x1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1;-><init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;ILandroidx/compose/ui/layout/MeasureResult;I)V

    return-object v0
.end method
