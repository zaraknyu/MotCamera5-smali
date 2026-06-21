.class public final Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $$changed:I

.field public final synthetic $$changed1:I

.field public final synthetic $beyondViewportPageCount:I

.field public final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

.field public final synthetic $key:Lkotlin/jvm/functions/Function1;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public final synthetic $pageContent:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field public final synthetic $pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

.field public final synthetic $pageSpacing:F

.field public final synthetic $r8$classId:I

.field public final synthetic $snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

.field public final synthetic $state:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic $userScrollEnabled:Z

.field public final synthetic $verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;IFLandroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$state:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iput-object p4, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

    iput p5, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$beyondViewportPageCount:I

    iput p6, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageSpacing:F

    iput-object p7, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    iput-object p8, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iput-boolean p9, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$userScrollEnabled:Z

    iput-object p10, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$key:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p12, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    iput-object p13, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput-object p14, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageContent:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move/from16 p1, p15

    iput p1, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$$changed:I

    move/from16 p1, p16

    iput p1, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$$changed1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$r8$classId:I

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    iput-object p1, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$state:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iput-object p4, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iput-boolean p5, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$userScrollEnabled:Z

    iput-object p6, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iput p7, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$beyondViewportPageCount:I

    iput p8, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageSpacing:F

    iput-object p9, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

    iput-object p10, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p11, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$key:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    iput-object p13, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    iput-object p14, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageContent:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move/from16 p1, p15

    iput p1, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$$changed:I

    move/from16 p1, p16

    iput p1, p0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$$changed1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$r8$classId:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v3, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$$changed:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    or-int/lit8 v1, v3, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget v7, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$$changed1:I

    iget v4, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageSpacing:F

    iget v5, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$beyondViewportPageCount:I

    iget-object v8, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object v9, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-object v10, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    iget-object v11, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget-object v12, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

    iget-object v13, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v15, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageContent:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v1, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget-object v3, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$modifier:Landroidx/compose/ui/Modifier;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$key:Lkotlin/jvm/functions/Function1;

    iget-boolean v0, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$userScrollEnabled:Z

    move/from16 v20, v0

    move-object/from16 v19, v1

    move-object/from16 v17, v3

    invoke-static/range {v4 .. v20}, Landroidx/compose/foundation/pager/PagerKt;->HorizontalPager--8jOkeI(FIIILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Z)V

    return-object v2

    :pswitch_0
    move-object/from16 v29, p1

    check-cast v29, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    or-int/lit8 v1, v3, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v21

    iget v1, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v22

    iget v1, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageSpacing:F

    iget v3, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$beyondViewportPageCount:I

    iget-object v4, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    iget-object v5, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-object v6, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$snapPosition:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    iget-object v7, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget-object v8, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageSize:Landroidx/compose/foundation/pager/PageSize$Fill;

    iget-object v9, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v10, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageContent:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget-object v11, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$verticalAlignment:Landroidx/compose/ui/BiasAlignment$Vertical;

    iget-object v12, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v13, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object v14, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$key:Lkotlin/jvm/functions/Function1;

    iget-boolean v0, v0, Landroidx/compose/foundation/pager/LazyLayoutPagerKt$Pager$2;->$userScrollEnabled:Z

    move/from16 v35, v0

    move/from16 v19, v1

    move/from16 v20, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    invoke-static/range {v19 .. v35}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->Pager-eLwUrMk(FIIILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Z)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
