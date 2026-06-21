.class public final Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
.source "SourceFile"


# instance fields
.field public shapeModifiers:Ljava/util/ArrayList;

.field public final tempPath:Landroid/graphics/Path;

.field public final tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

.field public valueCallbackEndPath:Landroid/graphics/Path;

.field public valueCallbackStartPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/airbnb/lottie/model/content/ShapeData;

    invoke-direct {p1}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/Keyframe;F)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, p2

    iget-object v2, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v2, Lcom/airbnb/lottie/model/content/ShapeData;

    iget-object v3, v1, Lcom/airbnb/lottie/value/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v3, Lcom/airbnb/lottie/model/content/ShapeData;

    if-nez v3, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    iget-object v6, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempShapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    iget-object v7, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    iget-object v8, v6, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v8, :cond_1

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    iput-object v8, v6, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    :cond_1
    iget-boolean v8, v2, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    iget-object v9, v2, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    const/4 v11, 0x1

    if-nez v8, :cond_3

    iget-boolean v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v11

    :goto_2
    iput-boolean v8, v6, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v12, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eq v8, v13, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "Curves must have the same number of control points. Shape 1: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\tShape 2: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v13, v8, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_3
    if-ge v13, v8, :cond_6

    new-instance v14, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v14}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v8, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v11

    :goto_4
    if-lt v13, v8, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v11

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    :cond_6
    iget-object v8, v2, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    iget-object v4, v4, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    iget v13, v8, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v13, v14, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v13

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v4, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    invoke-virtual {v6, v13, v4}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v11

    :goto_5
    if-ltz v4, :cond_7

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    iget-object v14, v8, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget-object v15, v8, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget-object v8, v8, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    move/from16 v16, v11

    iget-object v11, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget-object v10, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget-object v13, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    check-cast v6, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v17, v9

    iget v9, v14, Landroid/graphics/PointF;->x:F

    move-object/from16 v19, v12

    iget v12, v11, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v12, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v9

    iget v12, v14, Landroid/graphics/PointF;->y:F

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v12, v11, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v11

    iget-object v6, v6, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    invoke-virtual {v6, v9, v11}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v9, v15, Landroid/graphics/PointF;->x:F

    iget v11, v10, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v11, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v9

    iget v11, v15, Landroid/graphics/PointF;->y:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v11, v10, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v10

    iget-object v6, v6, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    invoke-virtual {v6, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v10, v13, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v10, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v9

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v10, v13, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v10, v5}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v8

    iget-object v6, v6, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v6, v9, v8}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v4, v4, -0x1

    move/from16 v11, v16

    move-object/from16 v9, v17

    move-object/from16 v6, v18

    move-object/from16 v12, v19

    goto :goto_5

    :cond_7
    move-object/from16 v18, v6

    move/from16 v16, v11

    iget-object v4, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/ArrayList;

    if-eqz v4, :cond_1b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v6, v18

    :goto_6
    iget-object v7, v6, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    if-ltz v4, :cond_1a

    iget-object v8, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/ArrayList;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-gt v9, v10, :cond_8

    goto :goto_7

    :cond_8
    iget-object v9, v8, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->roundedCorners:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v11, v9, v10

    if-nez v11, :cond_9

    :goto_7
    move/from16 v18, v4

    :goto_8
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    goto/16 :goto_17

    :cond_9
    iget-boolean v11, v6, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    :goto_9
    if-ltz v12, :cond_f

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/model/CubicCurveData;

    add-int/lit8 v15, v12, -0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v15, v10}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v10

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/model/CubicCurveData;

    if-nez v12, :cond_a

    if-nez v11, :cond_a

    iget-object v15, v6, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    goto :goto_a

    :cond_a
    iget-object v15, v10, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    :goto_a
    if-nez v12, :cond_b

    if-nez v11, :cond_b

    move-object v10, v15

    goto :goto_b

    :cond_b
    iget-object v10, v10, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    :goto_b
    iget-object v14, v14, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    move/from16 v18, v4

    iget-boolean v4, v6, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    if-nez v4, :cond_d

    if-eqz v12, :cond_c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v12, v4, :cond_d

    :cond_c
    move/from16 v4, v16

    goto :goto_c

    :cond_d
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v10, v15}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v14, v15}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    if-nez v4, :cond_e

    add-int/lit8 v13, v13, 0x2

    goto :goto_d

    :cond_e
    add-int/lit8 v13, v13, 0x1

    :goto_d
    add-int/lit8 v12, v12, -0x1

    move/from16 v4, v18

    const/4 v10, 0x0

    goto :goto_9

    :cond_f
    move/from16 v18, v4

    iget-object v4, v8, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    if-eqz v4, :cond_11

    iget-object v4, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v13, :cond_10

    goto :goto_e

    :cond_10
    const/4 v13, 0x0

    goto :goto_10

    :cond_11
    :goto_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v13, :cond_12

    new-instance v12, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v12}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_12
    new-instance v10, Lcom/airbnb/lottie/model/content/ShapeData;

    new-instance v12, Landroid/graphics/PointF;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v13}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13, v4}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    iput-object v10, v8, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    :goto_10
    iget-object v4, v8, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->shapeData:Lcom/airbnb/lottie/model/content/ShapeData;

    iput-boolean v11, v4, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    iget-object v8, v6, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    iget v10, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v10, v8}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    iget-object v8, v4, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/ArrayList;

    iget-boolean v10, v6, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    move v11, v13

    move v12, v11

    :goto_11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_19

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/airbnb/lottie/model/CubicCurveData;

    add-int/lit8 v15, v11, -0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v15, v13}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v13

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    add-int/lit8 v15, v11, -0x2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v15, v5}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v5

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/CubicCurveData;

    if-nez v11, :cond_13

    if-nez v10, :cond_13

    iget-object v15, v6, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    goto :goto_12

    :cond_13
    iget-object v15, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    :goto_12
    if-nez v11, :cond_14

    if-nez v10, :cond_14

    move-object/from16 v17, v7

    move-object v7, v15

    :goto_13
    move/from16 v19, v9

    goto :goto_14

    :cond_14
    move-object/from16 v17, v7

    iget-object v7, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    goto :goto_13

    :goto_14
    iget-object v9, v14, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget-object v5, v5, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    move/from16 v20, v10

    iget-object v10, v14, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    iget-boolean v1, v6, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    if-nez v1, :cond_16

    if-eqz v11, :cond_15

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_16

    :cond_15
    move/from16 v1, v16

    goto :goto_15

    :cond_16
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v7, v15}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v9, v15}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    if-nez v1, :cond_18

    iget v1, v15, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    sub-float v7, v1, v7

    iget v9, v15, Landroid/graphics/PointF;->y:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    sub-float v13, v9, v13

    iget v14, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v1

    iget v1, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v9

    move-object v9, v6

    float-to-double v6, v7

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    float-to-double v2, v13

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v6, v14

    float-to-double v13, v1

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    div-float v2, v19, v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v1, v19, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v3, v15, Landroid/graphics/PointF;->x:F

    iget v6, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v6, v3, v2, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v6

    iget v7, v15, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v7, v2, v7}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v2

    iget v5, v10, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v3, v1, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-static {v10, v7, v1, v7}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    sub-float v10, v6, v3

    const v13, 0x3f0d4952    # 0.5519f

    mul-float/2addr v10, v13

    sub-float v10, v6, v10

    sub-float v14, v2, v7

    mul-float/2addr v14, v13

    sub-float v14, v2, v14

    sub-float v3, v5, v3

    mul-float/2addr v3, v13

    sub-float v3, v5, v3

    sub-float v7, v1, v7

    mul-float/2addr v7, v13

    sub-float v7, v1, v7

    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v13, v15}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v13

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/airbnb/lottie/model/CubicCurveData;

    move-object/from16 v23, v9

    iget-object v9, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    invoke-virtual {v9, v6, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v9, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v9, v6, v2}, Landroid/graphics/PointF;->set(FF)V

    if-nez v11, :cond_17

    invoke-virtual {v4, v6, v2}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    :cond_17
    iget-object v2, v15, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    invoke-virtual {v2, v10, v14}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v2, v12, 0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    iget-object v6, v15, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    invoke-virtual {v6, v3, v7}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, v15, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v3, v5, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, v2, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    invoke-virtual {v2, v5, v1}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v12, v12, 0x2

    goto :goto_16

    :cond_18
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    add-int/lit8 v1, v12, -0x1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/lottie/animation/content/RoundedCornersContent;->floorMod(II)I

    move-result v1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    iget-object v3, v13, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v6, v1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    invoke-virtual {v6, v5, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, v13, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v1, v1, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v1, v5, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v14, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, v2, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v12, v12, 0x1

    :goto_16
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v5, p2

    move-object/from16 v7, v17

    move/from16 v9, v19

    move/from16 v10, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v6, v23

    const/4 v13, 0x0

    goto/16 :goto_11

    :cond_19
    move-object v6, v4

    goto/16 :goto_8

    :goto_17
    add-int/lit8 v4, v18, -0x1

    move-object/from16 v1, p1

    move/from16 v5, p2

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v23, v6

    :goto_18
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    goto :goto_19

    :cond_1b
    move-object/from16 v6, v18

    goto :goto_18

    :goto_19
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->tempPath:Landroid/graphics/Path;

    invoke-static {v6, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V

    iget-object v2, v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    if-eqz v2, :cond_1f

    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackStartPath:Landroid/graphics/Path;

    if-nez v1, :cond_1c

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackStartPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackEndPath:Landroid/graphics/Path;

    :cond_1c
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackStartPath:Landroid/graphics/Path;

    move-object/from16 v2, v21

    invoke-static {v2, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V

    if-eqz v22, :cond_1d

    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackEndPath:Landroid/graphics/Path;

    move-object/from16 v3, v22

    invoke-static {v3, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V

    goto :goto_1a

    :cond_1d
    move-object/from16 v3, v22

    :goto_1a
    iget-object v1, v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->valueCallback:Lcom/motorola/camera/CameraKpi;

    move-object/from16 v2, p1

    move-object v4, v1

    iget v1, v2, Lcom/airbnb/lottie/value/Keyframe;->startFrame:F

    iget-object v2, v2, Lcom/airbnb/lottie/value/Keyframe;->endFrame:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackStartPath:Landroid/graphics/Path;

    if-nez v22, :cond_1e

    move-object v5, v3

    goto :goto_1b

    :cond_1e
    iget-object v5, v0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->valueCallbackEndPath:Landroid/graphics/Path;

    :goto_1b
    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getLinearCurrentKeyframeProgress()F

    move-result v6

    iget v7, v0, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->progress:F

    move-object v0, v4

    move-object v4, v5

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/camera/CameraKpi;->getValueInternal(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    return-object v0

    :cond_1f
    return-object v1
.end method

.method public final skipCache()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/ShapeKeyframeAnimation;->shapeModifiers:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
