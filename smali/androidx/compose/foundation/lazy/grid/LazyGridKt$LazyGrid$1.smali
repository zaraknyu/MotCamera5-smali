.class public final Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$changed1:I

.field public final synthetic $content:Lkotlin/jvm/functions/Function1;

.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public final synthetic $slots:Landroidx/compose/foundation/lazy/grid/GridSlotCache;

.field public final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic $userScrollEnabled:Z

.field public final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$slots:Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$userScrollEnabled:Z

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$content:Lkotlin/jvm/functions/Function1;

    iput p11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$$changed:I

    iput p12, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$$changed1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v11

    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$$changed1:I

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v12

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$slots:Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget-object v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$userScrollEnabled:Z

    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$LazyGrid$1;->$content:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/GridSlotCache;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
