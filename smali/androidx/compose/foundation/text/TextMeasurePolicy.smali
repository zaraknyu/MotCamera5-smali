.class public final Landroidx/compose/foundation/text/TextMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final synthetic $r8$classId:I

.field public final placements:Ljava/lang/Object;

.field public final shouldMeasureLinks:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/TextMeasurePolicy;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/foundation/text/TextMeasurePolicy;->shouldMeasureLinks:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/text/TextMeasurePolicy;->placements:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Landroidx/compose/foundation/text/TextMeasurePolicy;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v2, v0, Landroidx/compose/foundation/text/TextMeasurePolicy;->shouldMeasureLinks:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sget-object v4, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    if-nez v3, :cond_0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    sget-object v3, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$NoOpUpdate$1;->INSTANCE$2:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$NoOpUpdate$1;

    invoke-interface {v1, v0, v2, v4, v3}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_1
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;III)I

    move-result v3

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v5, v6, v7}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;III)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    new-instance v6, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;

    iget-object v0, v0, Landroidx/compose/foundation/text/TextMeasurePolicy;->placements:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v0, v7}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;Landroidx/compose/ui/node/LayoutNode;I)V

    invoke-interface {v1, v3, v5, v4, v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v8}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    if-nez v8, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, v0, Landroidx/compose/foundation/text/TextMeasurePolicy;->placements:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_8

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_7

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/geometry/Rect;

    if-eqz v10, :cond_5

    iget v11, v10, Landroidx/compose/ui/geometry/Rect;->top:F

    iget v12, v10, Landroidx/compose/ui/geometry/Rect;->left:F

    new-instance v13, Lkotlin/Pair;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    iget v15, v10, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float/2addr v15, v12

    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    iget v6, v10, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float/2addr v6, v11

    move-object v10, v3

    move-object v15, v4

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    const/4 v4, 0x5

    invoke-static {v5, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(III)J

    move-result-wide v3

    invoke-interface {v14, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v11, v4

    const/16 v4, 0x20

    shl-long/2addr v11, v4

    int-to-long v4, v5

    const-wide v16, 0xffffffffL

    and-long v4, v4, v16

    or-long/2addr v4, v11

    new-instance v6, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v6, v4, v5}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    invoke-direct {v13, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move-object v10, v3

    move-object v15, v4

    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_6

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move-object v3, v10

    move-object v4, v15

    goto :goto_2

    :cond_7
    move-object v6, v7

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_a

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v8}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroidx/compose/foundation/text/TextRangeLayoutModifier;

    if-eqz v8, :cond_9

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    iget-object v0, v0, Landroidx/compose/foundation/text/TextMeasurePolicy;->shouldMeasureLinks:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v0}, Landroidx/compose/foundation/text/BasicTextKt;->access$measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    new-instance v4, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v5, 0x17

    invoke-direct {v4, v5, v6, v0}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {v1, v2, v3, v0, v4}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
