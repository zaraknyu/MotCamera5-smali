.class public abstract Lcom/airbnb/lottie/parser/AnimatableTransformParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANIMATABLE_NAMES:Lcom/tinder/StateMachine;

.field public static final NAMES:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string/jumbo v8, "sk"

    const-string/jumbo v9, "sa"

    const-string v0, "a"

    const-string v1, "p"

    const-string/jumbo v2, "s"

    const-string/jumbo v3, "rz"

    const-string/jumbo v4, "r"

    const-string v5, "o"

    const-string/jumbo v6, "so"

    const-string v7, "eo"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/tinder/StateMachine;

    const-string v0, "k"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/tinder/StateMachine;

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->peek()I

    move-result v1

    const/4 v4, 0x3

    const/4 v9, 0x0

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    move v10, v1

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    if-eqz v10, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_6

    sget-object v5, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_1

    :pswitch_0
    invoke-static {v0, v2, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    goto :goto_1

    :pswitch_1
    invoke-static {v0, v2, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v15

    goto :goto_1

    :pswitch_2
    invoke-static {v0, v2, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v23

    goto :goto_1

    :pswitch_3
    invoke-static {v0, v2, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v22

    goto :goto_1

    :pswitch_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v21

    goto :goto_1

    :pswitch_5
    const-string v1, "Lottie doesn\'t support 3D layers."

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :pswitch_6
    invoke-static {v0, v2, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v1

    iget-object v5, v1, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v1

    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    iget v7, v2, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move-object/from16 v17, v6

    const/4 v6, 0x0

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v8, v16

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;FLjava/lang/Float;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v17, v1

    move-object v11, v4

    move-object v8, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v1, v1, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    if-nez v1, :cond_3

    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    iget v4, v2, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v3

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;FLjava/lang/Float;)V

    invoke-interface {v8, v9, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    move-object v4, v11

    move-object/from16 v1, v17

    :goto_3
    const/4 v8, 0x0

    goto/16 :goto_1

    :pswitch_7
    move-object v11, v4

    new-instance v14, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    sget-object v4, Lcom/airbnb/lottie/parser/PathParser;->INSTANCE$5:Lcom/airbnb/lottie/parser/PathParser;

    invoke-static {v0, v2, v6, v4, v9}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v14, v4, v5}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    :goto_4
    move-object v4, v11

    goto :goto_3

    :pswitch_8
    move-object v11, v4

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v13

    goto :goto_3

    :pswitch_9
    move-object v11, v4

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :goto_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->ANIMATABLE_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_5

    :cond_4
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Landroidx/work/impl/constraints/WorkConstraintsTracker;

    move-result-object v12

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    goto :goto_4

    :cond_6
    move-object v11, v4

    if-eqz v10, :cond_7

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    :cond_7
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v12, Landroidx/work/impl/constraints/WorkConstraintsTracker;->controllers:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move-object/from16 v17, v12

    goto :goto_7

    :cond_9
    :goto_6
    const/16 v17, 0x0

    :goto_7
    if-eqz v13, :cond_a

    instance-of v0, v13, Lcom/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue;

    if-nez v0, :cond_b

    invoke-interface {v13}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v13}, Lcom/airbnb/lottie/model/animatable/AnimatableValue;->getKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const/4 v13, 0x0

    :cond_b
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/16 v18, 0x0

    cmpl-float v0, v0, v18

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    move-object/from16 v20, v1

    goto :goto_9

    :cond_d
    :goto_8
    const/16 v20, 0x0

    :goto_9
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Landroidx/media3/common/BasePlayer;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v14, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/value/ScaleXY;

    iget v1, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleX:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_e

    iget v0, v0, Lcom/airbnb/lottie/value/ScaleXY;->scaleY:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v19, v14

    goto :goto_b

    :cond_f
    :goto_a
    const/16 v19, 0x0

    :goto_b
    if-eqz v15, :cond_11

    invoke-virtual {v15}, Landroidx/media3/common/BasePlayer;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v15, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/16 v18, 0x0

    cmpl-float v0, v0, v18

    if-nez v0, :cond_10

    goto :goto_c

    :cond_10
    move-object/from16 v24, v15

    goto :goto_d

    :cond_11
    :goto_c
    const/16 v24, 0x0

    :goto_d
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Landroidx/media3/common/BasePlayer;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v11, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/value/Keyframe;

    iget-object v0, v0, Lcom/airbnb/lottie/value/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/16 v18, 0x0

    cmpl-float v0, v0, v18

    if-nez v0, :cond_12

    goto :goto_e

    :cond_12
    move-object/from16 v25, v11

    goto :goto_f

    :cond_13
    :goto_e
    const/16 v25, 0x0

    :goto_f
    new-instance v16, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object/from16 v18, v13

    invoke-direct/range {v16 .. v25}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Landroidx/work/impl/constraints/WorkConstraintsTracker;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
