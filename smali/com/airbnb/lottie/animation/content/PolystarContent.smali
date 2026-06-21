.class public final Lcom/airbnb/lottie/animation/content/PolystarContent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;
.implements Lcom/airbnb/lottie/animation/content/KeyPathElementContent;


# instance fields
.field public final hidden:Z

.field public final innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public isPathValid:Z

.field public final isReversed:Z

.field public final lastSegmentPath:Landroid/graphics/Path;

.field public final lastSegmentPathMeasure:Landroid/graphics/PathMeasure;

.field public final lastSegmentPosition:[F

.field public final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field public final name:Ljava/lang/String;

.field public final outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final path:Landroid/graphics/Path;

.field public final pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

.field public final rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

.field public final trimPaths:Lcom/motorola/camera/editor/parser/XMPParser;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/PolystarShape;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPosition:[F

    new-instance v0, Lcom/motorola/camera/editor/parser/XMPParser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/editor/parser/XMPParser;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/motorola/camera/editor/parser/XMPParser;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object p1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    iget p1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->type:I

    iput p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:I

    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->hidden:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    iget-boolean v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->isReversed:Z

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    iget-object v0, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->points:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iget-object v1, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    invoke-interface {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v2, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iget-object v3, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iget-object v4, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    iget-object v6, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRadius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iget-object p3, p3, Lcom/airbnb/lottie/model/content/PolystarShape;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object p3

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    :goto_0
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, v2}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, v3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2, v4}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    if-ne p1, v5, :cond_1

    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object p3, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    :cond_1
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    invoke-virtual {v4, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    if-ne p1, v5, :cond_2

    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final addValueCallback(Lcom/motorola/camera/CameraKpi;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_POINTS:Ljava/lang/Float;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :cond_0
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_ROTATION:Ljava/lang/Float;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :cond_1
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POSITION:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_RADIUS:Ljava/lang/Float;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :cond_3
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_RADIUS:Ljava/lang/Float;

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :cond_4
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_INNER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    return-void

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->POLYSTAR_OUTER_ROUNDEDNESS:Ljava/lang/Float;

    if-ne p2, v0, :cond_6

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->setValueCallback(Lcom/motorola/camera/CameraKpi;)V

    :cond_6
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 42

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->path:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->hidden:Z

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    iput-boolean v9, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    return-object v2

    :cond_1
    iget v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->type:I

    invoke-static {v1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    iget-object v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->positionAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    iget-object v5, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->outerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    const-wide v12, 0x4056800000000000L    # 90.0

    const-wide/16 v14, 0x0

    iget-object v8, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->rotationAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    const/high16 v16, 0x42c80000    # 100.0f

    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->pointsAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    const/16 v17, 0x0

    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_8

    if-eq v1, v9, :cond_2

    move/from16 v24, v9

    goto/16 :goto_12

    :cond_2
    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v14, v4

    :goto_0
    sub-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    int-to-double v12, v1

    div-double v14, v22, v12

    double-to-float v1, v14

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float v14, v4, v16

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v15

    float-to-double v3, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move/from16 v24, v9

    move-object/from16 v25, v10

    mul-double v9, v22, v3

    double-to-float v5, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v3

    double-to-float v8, v8

    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v9, v1

    add-double/2addr v6, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    move-wide/from16 v22, v6

    const/4 v1, 0x0

    :goto_1
    int-to-double v6, v1

    cmpg-double v16, v6, v12

    if-gez v16, :cond_7

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v29, v12

    mul-double v11, v26, v3

    double-to-float v11, v11

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v3

    double-to-float v12, v12

    cmpl-float v13, v14, v17

    if-eqz v13, :cond_5

    move v13, v1

    move-object/from16 v26, v2

    float-to-double v1, v8

    move-wide/from16 v38, v3

    float-to-double v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v18

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    move v4, v1

    float-to-double v1, v12

    move/from16 v16, v3

    move/from16 v27, v4

    float-to-double v3, v11

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v18

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v2, v15, v14

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v2, v4

    mul-float v4, v2, v16

    mul-float v16, v2, v27

    mul-float/2addr v3, v2

    mul-float/2addr v2, v1

    sub-double v31, v29, v20

    cmpl-double v1, v6, v31

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v32, v5, v4

    sub-float v33, v8, v16

    add-float v34, v11, v3

    add-float v35, v12, v2

    move-object/from16 v31, v1

    move/from16 v36, v11

    move/from16 v37, v12

    invoke-virtual/range {v31 .. v37}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v11, 0x0

    invoke-virtual {v2, v1, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    const v3, 0x3f7ff972    # 0.9999f

    mul-float/2addr v1, v3

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lastSegmentPosition:[F

    invoke-virtual {v2, v1, v4, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    aget v7, v4, v11

    aget v8, v4, v24

    move-object/from16 v2, v26

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v5, v34

    move/from16 v6, v35

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v5, v36

    move/from16 v8, v37

    goto :goto_2

    :cond_4
    move/from16 v36, v11

    move/from16 v37, v12

    const/4 v11, 0x0

    sub-float/2addr v5, v4

    sub-float v4, v8, v16

    add-float v1, v36, v3

    add-float v6, v37, v2

    move v3, v5

    move-object/from16 v2, v26

    move/from16 v7, v36

    move/from16 v8, v37

    move v5, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v7

    goto :goto_2

    :cond_5
    move v13, v1

    move-wide/from16 v38, v3

    move v5, v11

    move v8, v12

    const/4 v11, 0x0

    sub-double v3, v29, v20

    cmpl-double v1, v6, v3

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-double v22, v22, v9

    :goto_3
    add-int/lit8 v1, v13, 0x1

    move-wide/from16 v12, v29

    move-wide/from16 v3, v38

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {v25 .. v25}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    goto/16 :goto_12

    :cond_8
    move/from16 v24, v9

    move-object/from16 v25, v10

    const/4 v11, 0x0

    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v8}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v14, v4

    :goto_4
    sub-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    float-to-double v8, v1

    div-double v12, v22, v8

    double-to-float v4, v12

    iget-boolean v10, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isReversed:Z

    if-eqz v10, :cond_a

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v4, v10

    :cond_a
    move v10, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v10, v12

    float-to-int v4, v1

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpl-float v14, v1, v17

    if-eqz v14, :cond_b

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    mul-float/2addr v4, v13

    move v15, v12

    float-to-double v11, v4

    add-double/2addr v6, v11

    goto :goto_5

    :cond_b
    move v15, v12

    :goto_5
    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRadiusAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget-object v3, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->innerRoundednessAnimation:Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v3, v3, v16

    move/from16 v22, v3

    goto :goto_6

    :cond_c
    move/from16 v22, v17

    :goto_6
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float v3, v3, v16

    move/from16 v16, v3

    goto :goto_7

    :cond_d
    move/from16 v16, v17

    :goto_7
    if-eqz v14, :cond_e

    invoke-static {v11, v12, v1, v12}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move/from16 v23, v3

    move-wide/from16 v29, v4

    mul-double v3, v26, v29

    double-to-float v3, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v29

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v5, v10, v1

    div-float/2addr v5, v15

    move/from16 v26, v3

    move/from16 v27, v4

    float-to-double v3, v5

    add-double/2addr v6, v3

    move/from16 v3, v26

    move/from16 v4, v27

    goto :goto_8

    :cond_e
    float-to-double v3, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v29, v3

    mul-double v3, v26, v29

    double-to-float v3, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v29

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v3

    move/from16 v23, v4

    float-to-double v3, v13

    add-double/2addr v6, v3

    move v3, v5

    move/from16 v4, v23

    move/from16 v23, v17

    :goto_8
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v29, v8, v26

    move-wide/from16 v31, v6

    const/4 v9, 0x0

    const/16 v28, 0x0

    :goto_9
    int-to-double v5, v9

    cmpg-double v7, v5, v29

    if-gez v7, :cond_19

    if-eqz v28, :cond_f

    move v7, v11

    goto :goto_a

    :cond_f
    move v7, v12

    :goto_a
    cmpl-float v8, v23, v17

    if-eqz v8, :cond_10

    sub-double v33, v29, v26

    cmpl-double v33, v5, v33

    if-nez v33, :cond_10

    mul-float v33, v10, v1

    div-float v33, v33, v15

    move/from16 v15, v33

    goto :goto_b

    :cond_10
    move v15, v13

    :goto_b
    if-eqz v8, :cond_11

    sub-double v34, v29, v20

    cmpl-double v8, v5, v34

    if-nez v8, :cond_11

    move/from16 v7, v23

    :cond_11
    float-to-double v7, v7

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    move-wide/from16 v36, v5

    mul-double v5, v34, v7

    double-to-float v5, v5

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    mul-double v6, v34, v7

    double-to-float v8, v6

    cmpl-float v6, v22, v17

    if-nez v6, :cond_12

    cmpl-float v6, v16, v17

    if-nez v6, :cond_12

    invoke-virtual {v2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v35, v1

    move v7, v5

    goto/16 :goto_11

    :cond_12
    float-to-double v6, v4

    move/from16 v35, v1

    move-object/from16 v34, v2

    float-to-double v1, v3

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v18

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    move v7, v1

    float-to-double v1, v8

    move/from16 v38, v3

    move/from16 v39, v4

    float-to-double v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double v1, v1, v18

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    if-eqz v28, :cond_13

    move/from16 v2, v22

    goto :goto_c

    :cond_13
    move/from16 v2, v16

    :goto_c
    if-eqz v28, :cond_14

    move/from16 v4, v16

    goto :goto_d

    :cond_14
    move/from16 v4, v22

    :goto_d
    if-eqz v28, :cond_15

    move/from16 v40, v12

    goto :goto_e

    :cond_15
    move/from16 v40, v11

    :goto_e
    if-eqz v28, :cond_16

    move/from16 v41, v11

    goto :goto_f

    :cond_16
    move/from16 v41, v12

    :goto_f
    mul-float v40, v40, v2

    const v2, 0x3ef4e26d    # 0.47829f

    mul-float v40, v40, v2

    mul-float v6, v6, v40

    mul-float v40, v40, v7

    mul-float v41, v41, v4

    mul-float v41, v41, v2

    mul-float v3, v3, v41

    mul-float v41, v41, v1

    if-eqz v14, :cond_18

    if-nez v9, :cond_17

    mul-float v6, v6, v35

    mul-float v40, v40, v35

    goto :goto_10

    :cond_17
    sub-double v1, v29, v20

    cmpl-double v1, v36, v1

    if-nez v1, :cond_18

    mul-float v3, v3, v35

    mul-float v41, v41, v35

    :cond_18
    :goto_10
    sub-float v1, v38, v6

    sub-float v4, v39, v40

    add-float/2addr v3, v5

    add-float v6, v8, v41

    move v7, v5

    move-object/from16 v2, v34

    move v5, v3

    move v3, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_11
    float-to-double v3, v15

    add-double v31, v31, v3

    xor-int/lit8 v28, v28, 0x1

    add-int/lit8 v9, v9, 0x1

    move v3, v7

    move v4, v8

    move/from16 v1, v35

    const/high16 v15, 0x40000000    # 2.0f

    goto/16 :goto_9

    :cond_19
    invoke-virtual/range {v25 .. v25}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    :goto_12
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/motorola/camera/editor/parser/XMPParser;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/editor/parser/XMPParser;->apply(Landroid/graphics/Path;)V

    move/from16 v1, v24

    iput-boolean v1, v0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    return-object v2
.end method

.method public final onValueChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->isPathValid:Z

    iget-object p0, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public final resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lcom/airbnb/lottie/utils/MiscUtils;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;ILjava/util/ArrayList;Lcom/airbnb/lottie/model/KeyPath;Lcom/airbnb/lottie/animation/content/KeyPathElementContent;)V

    return-void
.end method

.method public final setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 p2, 0x0

    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    iget v1, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/PolystarContent;->trimPaths:Lcom/motorola/camera/editor/parser/XMPParser;

    iget-object v1, v1, Lcom/motorola/camera/editor/parser/XMPParser;->attributeParsers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
