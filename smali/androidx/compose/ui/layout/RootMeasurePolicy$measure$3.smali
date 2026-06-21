.class public final Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $placeables:Ljava/util/ArrayList;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;->$placeables:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;->$placeables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;->$placeables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, v5, v3, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;->$placeables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, v5, v3, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;->$placeables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    iget-object v6, v5, Landroidx/compose/foundation/pager/MeasuredPage;->placeables:Ljava/util/List;

    iget-boolean v7, v5, Landroidx/compose/foundation/pager/MeasuredPage;->isVertical:Z

    iget v8, v5, Landroidx/compose/foundation/pager/MeasuredPage;->mainAxisLayoutSize:I

    const/high16 v9, -0x80000000

    if-eq v8, v9, :cond_2

    goto :goto_3

    :cond_2
    const-string/jumbo v8, "position() should be called first"

    invoke-static {v8}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Placeable;

    iget-object v11, v5, Landroidx/compose/foundation/pager/MeasuredPage;->placeableOffsets:[I

    mul-int/lit8 v12, v9, 0x2

    aget v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    int-to-long v12, v13

    const/16 v14, 0x20

    shl-long/2addr v12, v14

    move/from16 p1, v4

    int-to-long v3, v11

    const-wide v15, 0xffffffffL

    and-long/2addr v3, v15

    or-long/2addr v3, v12

    iget-boolean v11, v5, Landroidx/compose/foundation/pager/MeasuredPage;->reverseLayout:Z

    if-eqz v11, :cond_7

    if-eqz v7, :cond_3

    shr-long v11, v3, v14

    long-to-int v11, v11

    goto :goto_6

    :cond_3
    shr-long v11, v3, v14

    long-to-int v11, v11

    iget v12, v5, Landroidx/compose/foundation/pager/MeasuredPage;->mainAxisLayoutSize:I

    sub-int/2addr v12, v11

    if-eqz v7, :cond_4

    iget v11, v10, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_5

    :cond_4
    iget v11, v10, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_5
    sub-int v11, v12, v11

    :goto_6
    if-eqz v7, :cond_6

    and-long/2addr v3, v15

    long-to-int v3, v3

    iget v4, v5, Landroidx/compose/foundation/pager/MeasuredPage;->mainAxisLayoutSize:I

    sub-int/2addr v4, v3

    if-eqz v7, :cond_5

    iget v3, v10, Landroidx/compose/ui/layout/Placeable;->height:I

    goto :goto_7

    :cond_5
    iget v3, v10, Landroidx/compose/ui/layout/Placeable;->width:I

    :goto_7
    sub-int/2addr v4, v3

    goto :goto_8

    :cond_6
    and-long/2addr v3, v15

    long-to-int v4, v3

    :goto_8
    int-to-long v11, v11

    shl-long/2addr v11, v14

    int-to-long v3, v4

    and-long/2addr v3, v15

    or-long/2addr v3, v11

    :cond_7
    iget-wide v11, v5, Landroidx/compose/foundation/pager/MeasuredPage;->visualOffset:J

    invoke-static {v3, v4, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v3

    if-eqz v7, :cond_8

    invoke-static {v1, v10, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    goto :goto_9

    :cond_8
    invoke-static {v1, v10, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, p1

    goto :goto_4

    :cond_9
    move/from16 p1, v4

    add-int/lit8 v4, p1, 0x1

    goto/16 :goto_2

    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;->$placeables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, v5, v3, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;->$placeables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    invoke-static {v1, v5, v3, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
