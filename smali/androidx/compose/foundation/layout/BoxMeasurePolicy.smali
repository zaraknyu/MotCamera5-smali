.class public final Landroidx/compose/foundation/layout/BoxMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final alignment:Landroidx/compose/ui/BiasAlignment;

.field public final propagateMinConstraints:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/BiasAlignment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    iget-object v1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/BiasAlignment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    if-eq p0, p1, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v0}, Landroidx/compose/ui/BiasAlignment;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16

    move-object/from16 v3, p1

    move-object/from16 v2, p2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    sget-object v7, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    if-eqz v0, :cond_0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v1

    sget-object v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;->INSTANCE:Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;

    invoke-interface {v3, v0, v1, v7, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v6, p0

    iget-boolean v0, v6, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    if-eqz v0, :cond_1

    move-wide/from16 v0, p3

    goto :goto_0

    :cond_1
    const-wide v0, -0x1fffffffdL

    and-long v0, p3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v4, v8, :cond_8

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v2}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v4

    instance-of v10, v4, Landroidx/compose/foundation/layout/BoxChildDataNode;

    if-eqz v10, :cond_2

    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/layout/BoxChildDataNode;

    :cond_2
    if-eqz v5, :cond_3

    iget-boolean v4, v5, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    goto :goto_1

    :cond_3
    move v4, v9

    :goto_1
    if-nez v4, :cond_4

    invoke-interface {v2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    iget v4, v0, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    iget v5, v0, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_2
    move v5, v4

    move v4, v1

    move-object v1, v0

    goto :goto_5

    :cond_4
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v1

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v5

    if-ltz v0, :cond_5

    move v10, v8

    goto :goto_3

    :cond_5
    move v10, v9

    :goto_3
    if-ltz v5, :cond_6

    goto :goto_4

    :cond_6
    move v8, v9

    :goto_4
    and-int/2addr v8, v10

    if-nez v8, :cond_7

    const-string/jumbo v8, "width and height must be >= 0"

    invoke-static {v8}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_7
    invoke-static {v0, v0, v5, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide v8

    invoke-interface {v2, v8, v9}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_2

    :goto_5
    new-instance v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$2;

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    invoke-interface {v3, v4, v5, v7, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroidx/compose/ui/layout/Placeable;

    move-object v6, v4

    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v10

    iput v10, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v10, v5

    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v11

    iput v11, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    move v12, v9

    move v13, v12

    :goto_6
    if-ge v12, v11, :cond_c

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v14}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v15

    instance-of v8, v15, Landroidx/compose/foundation/layout/BoxChildDataNode;

    if-eqz v8, :cond_9

    check-cast v15, Landroidx/compose/foundation/layout/BoxChildDataNode;

    goto :goto_7

    :cond_9
    move-object v15, v10

    :goto_7
    if-eqz v15, :cond_a

    iget-boolean v8, v15, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    goto :goto_8

    :cond_a
    move v8, v9

    :goto_8
    if-nez v8, :cond_b

    invoke-interface {v14, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    aput-object v8, v6, v12

    iget v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v15, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v14, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v8, v8, Landroidx/compose/ui/layout/Placeable;->height:I

    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_9

    :cond_b
    const/4 v13, 0x1

    :goto_9
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_6

    :cond_c
    if-eqz v13, :cond_12

    iget v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_d

    move v8, v0

    goto :goto_a

    :cond_d
    move v8, v9

    :goto_a
    iget v11, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eq v11, v1, :cond_e

    move v1, v11

    goto :goto_b

    :cond_e
    move v1, v9

    :goto_b
    invoke-static {v8, v0, v1, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v0

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v8

    move v11, v9

    :goto_c
    if-ge v11, v8, :cond_12

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    invoke-interface {v12}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Landroidx/compose/foundation/layout/BoxChildDataNode;

    if-eqz v14, :cond_f

    check-cast v13, Landroidx/compose/foundation/layout/BoxChildDataNode;

    goto :goto_d

    :cond_f
    move-object v13, v10

    :goto_d
    if-eqz v13, :cond_10

    iget-boolean v13, v13, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    goto :goto_e

    :cond_10
    move v13, v9

    :goto_e
    if-eqz v13, :cond_11

    invoke-interface {v12, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v12

    aput-object v12, v6, v11

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_12
    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v9, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$5;

    move-object v1, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$5;-><init>([Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/foundation/layout/BoxMeasurePolicy;)V

    invoke-interface {v3, v8, v9, v7, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BoxMeasurePolicy(alignment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->alignment:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", propagateMinConstraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;->propagateMinConstraints:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
