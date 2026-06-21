.class public final Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$changed1:I

.field public final synthetic $$default:I

.field public final synthetic $content:Lkotlin/jvm/functions/Function1;

.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic $horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

.field public final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic $isVertical:Z

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic $userScrollEnabled:Z

.field public final synthetic $verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

.field public final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$isVertical:Z

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$userScrollEnabled:Z

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p12, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$content:Lkotlin/jvm/functions/Function1;

    iput p13, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$changed:I

    iput p14, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$changed1:I

    iput p15, p0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v13

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v14

    iget v15, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$$default:I

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    move-object v3, v2

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-object v4, v3

    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$isVertical:Z

    move-object v5, v4

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    move-object v6, v5

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$userScrollEnabled:Z

    move-object v7, v6

    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    move-object v8, v7

    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$horizontalAlignment:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object v9, v8

    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object v10, v9

    iget-object v9, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    move-object v11, v10

    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;->$content:Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v11

    move-object v11, v0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt;->LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
