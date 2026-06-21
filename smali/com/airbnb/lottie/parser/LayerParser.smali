.class public abstract Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EFFECTS_NAMES:Lcom/tinder/StateMachine;

.field public static final NAMES:Lcom/tinder/StateMachine;

.field public static final TEXT_NAMES:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-string v24, "ao"

    const-string v25, "bm"

    const-string v1, "nm"

    const-string v2, "ind"

    const-string/jumbo v3, "refId"

    const-string/jumbo v4, "ty"

    const-string/jumbo v5, "parent"

    const-string/jumbo v6, "sw"

    const-string/jumbo v7, "sh"

    const-string/jumbo v8, "sc"

    const-string v9, "ks"

    const-string/jumbo v10, "tt"

    const-string v11, "masksProperties"

    const-string/jumbo v12, "shapes"

    const-string/jumbo v13, "t"

    const-string v14, "ef"

    const-string/jumbo v15, "sr"

    const-string/jumbo v16, "st"

    const-string/jumbo v17, "w"

    const-string v18, "h"

    const-string v19, "ip"

    const-string v20, "op"

    const-string/jumbo v21, "tm"

    const-string v22, "cl"

    const-string v23, "hd"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/tinder/StateMachine;

    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/tinder/StateMachine;

    const-string/jumbo v0, "ty"

    const-string v1, "nm"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/tinder/StateMachine;

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const-string v6, "UNSET"

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    move/from16 v17, v7

    move/from16 v18, v17

    move/from16 v25, v18

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v36, v27

    move-object/from16 v16, v8

    move-wide v7, v14

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move v15, v3

    move-wide v13, v12

    const/4 v3, 0x0

    move-object v12, v6

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_42

    sget-object v11, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v11

    const/16 v38, -0x1

    packed-switch v11, :pswitch_data_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_1d

    :pswitch_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v4

    const/16 v32, 0x12

    invoke-static/range {v32 .. v32}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v11

    array-length v11, v11

    if-lt v4, v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported Blend Mode: "

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    const/16 v32, 0x1

    goto :goto_0

    :cond_1
    invoke-static/range {v32 .. v32}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v5

    aget v32, v5, v4

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v28

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_4
    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v35

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v18, v4

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v17, v4

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v4

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v11

    move-object/from16 v42, v2

    move-object/from16 v43, v3

    float-to-double v2, v11

    mul-double/2addr v4, v2

    double-to-float v2, v4

    move/from16 v26, v2

    :goto_2
    move-object/from16 v2, v42

    move-object/from16 v3, v43

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v2

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    move/from16 v25, v2

    goto :goto_2

    :pswitch_9
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    move/from16 v27, v2

    goto :goto_2

    :pswitch_a
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v2

    double-to-float v15, v2

    goto :goto_2

    :pswitch_b
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :cond_2
    :goto_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v3, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    const/16 v5, 0x1d

    if-ne v3, v5, :cond_d

    sget-object v3, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/tinder/StateMachine;

    const/16 v29, 0x0

    :goto_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/airbnb/lottie/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :cond_6
    :goto_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    sget-object v11, Lcom/airbnb/lottie/parser/BlurEffectParser;->INNER_BLUR_EFFECT_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v4, 0x1

    if-eq v11, v4, :cond_7

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_7

    :cond_7
    if-eqz v3, :cond_8

    new-instance v5, Lcom/google/android/gms/tasks/zza;

    invoke-static {v0, v1, v4}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v11

    const/16 v4, 0x18

    invoke-direct {v5, v4, v11}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    if-eqz v5, :cond_6

    move-object/from16 v29, v5

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_5

    :cond_d
    const/16 v4, 0x19

    if-ne v3, v4, :cond_2

    new-instance v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const-string v4, ""

    :goto_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    sget-object v5, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v5

    if-eqz v5, :cond_15

    const/4 v11, 0x1

    if-eq v5, v11, :cond_f

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_a

    :cond_f
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_b
    move/from16 v5, v38

    goto :goto_c

    :sswitch_0
    const-string v5, "Softness"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_b

    :cond_10
    const/4 v5, 0x4

    goto :goto_c

    :sswitch_1
    const-string v5, "Shadow Color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_b

    :cond_11
    const/4 v5, 0x3

    goto :goto_c

    :sswitch_2
    const-string v5, "Direction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_b

    :cond_12
    const/4 v5, 0x2

    goto :goto_c

    :sswitch_3
    const-string v5, "Opacity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_b

    :cond_13
    const/4 v5, 0x1

    goto :goto_c

    :sswitch_4
    const-string v5, "Distance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_b

    :cond_14
    const/4 v5, 0x0

    :goto_c
    packed-switch v5, :pswitch_data_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_a

    :pswitch_c
    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v11

    iput-object v11, v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    goto :goto_a

    :pswitch_d
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v5

    iput-object v5, v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    goto :goto_a

    :pswitch_e
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v11

    iput-object v11, v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    goto :goto_a

    :pswitch_f
    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v11

    iput-object v11, v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    goto/16 :goto_a

    :pswitch_10
    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v11

    iput-object v11, v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    goto/16 :goto_a

    :cond_15
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    :cond_16
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    goto/16 :goto_9

    :cond_17
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto/16 :goto_8

    :cond_18
    iget-object v4, v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->color:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    if-eqz v4, :cond_19

    iget-object v5, v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v5, :cond_19

    iget-object v11, v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->direction:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v11, :cond_19

    move-object/from16 v45, v4

    iget-object v4, v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->distance:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v4, :cond_19

    iget-object v3, v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->radius:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v3, :cond_19

    new-instance v44, Lcom/motorola/camera/AppFeatures;

    const/16 v50, 0x9

    move-object/from16 v49, v3

    move-object/from16 v48, v4

    move-object/from16 v46, v5

    move-object/from16 v47, v11

    invoke-direct/range {v44 .. v50}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v30, v44

    goto/16 :goto_4

    :cond_19
    const/16 v30, 0x0

    goto/16 :goto_4

    :cond_1a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    goto/16 :goto_3

    :cond_1b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_11
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :goto_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v2

    if-eqz v2, :cond_30

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1c

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_d

    :cond_1c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    sget-object v4, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->PROPERTIES_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v4

    if-eqz v4, :cond_24

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1d

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_e

    :cond_1d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    :goto_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object v2, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_PROPERTIES_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v2

    if-eqz v2, :cond_22

    if-eq v2, v5, :cond_21

    const/4 v4, 0x2

    if-eq v2, v4, :cond_20

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1f

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1e

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_f

    :cond_1e
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v49

    goto :goto_f

    :cond_1f
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v48

    goto :goto_f

    :cond_20
    invoke-static {v0, v1, v5}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v47

    goto :goto_f

    :cond_21
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v46

    :goto_10
    const/4 v5, 0x1

    goto :goto_f

    :cond_22
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseColor(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v45

    goto :goto_10

    :cond_23
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v44, Lcom/motorola/camera/AppFeatures;

    const/16 v50, 0x8

    invoke-direct/range {v44 .. v50}, Lcom/motorola/camera/AppFeatures;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v2, v44

    goto :goto_e

    :cond_24
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_2b

    move-object/from16 v34, v4

    sget-object v4, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->ANIMATABLE_RANGE_PROPERTIES_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v4

    if-eqz v4, :cond_2a

    move/from16 v44, v6

    const/4 v6, 0x1

    if-eq v4, v6, :cond_29

    const/4 v6, 0x2

    if-eq v4, v6, :cond_28

    const/4 v6, 0x3

    if-eq v4, v6, :cond_25

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    :goto_12
    move-object/from16 v4, v34

    move/from16 v6, v44

    goto :goto_11

    :cond_25
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_26

    const/4 v6, 0x2

    if-eq v3, v6, :cond_26

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported text range units: "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    move-object/from16 v4, v34

    move/from16 v6, v44

    const/4 v3, 0x2

    goto :goto_11

    :cond_26
    if-ne v3, v4, :cond_27

    const/4 v3, 0x1

    goto :goto_12

    :cond_27
    const/4 v3, 0x2

    goto :goto_12

    :cond_28
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v11

    goto :goto_12

    :cond_29
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v5

    goto :goto_12

    :cond_2a
    move/from16 v44, v6

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v4

    goto :goto_11

    :cond_2b
    move-object/from16 v34, v4

    move/from16 v44, v6

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    if-nez v34, :cond_2c

    if-eqz v5, :cond_2c

    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    new-instance v6, Lcom/airbnb/lottie/value/Keyframe;

    move-wide/from16 v45, v7

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    goto :goto_13

    :cond_2c
    move-wide/from16 v45, v7

    move-object/from16 v4, v34

    :goto_13
    new-instance v6, Landroidx/compose/ui/graphics/AndroidPaint;

    invoke-direct {v6, v4, v5, v11, v3}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;I)V

    move-object v3, v6

    move/from16 v6, v44

    move-wide/from16 v7, v45

    goto/16 :goto_e

    :cond_2d
    move/from16 v44, v6

    move-wide/from16 v45, v7

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v4, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v5, 0x10

    invoke-direct {v4, v5, v2, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v34, v4

    goto :goto_14

    :cond_2e
    move/from16 v44, v6

    move-wide/from16 v45, v7

    :goto_14
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_14

    :cond_2f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    move/from16 v6, v44

    move-wide/from16 v7, v45

    goto/16 :goto_d

    :cond_30
    move/from16 v44, v6

    move-wide/from16 v45, v7

    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    sget-object v4, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    const/4 v5, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    move-object/from16 v33, v2

    goto/16 :goto_d

    :cond_31
    move/from16 v44, v6

    move-wide/from16 v45, v7

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    goto/16 :goto_2

    :pswitch_12
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :cond_32
    :goto_15
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_33
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto/16 :goto_1

    :pswitch_13
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_16
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_17
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :goto_18
    move/from16 v7, v38

    goto :goto_19

    :sswitch_5
    const-string v7, "mode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    goto :goto_18

    :cond_34
    const/4 v7, 0x3

    goto :goto_19

    :sswitch_6
    const-string v7, "inv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    goto :goto_18

    :cond_35
    const/4 v7, 0x2

    goto :goto_19

    :sswitch_7
    const-string/jumbo v7, "pt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    goto :goto_18

    :cond_36
    const/4 v7, 0x1

    goto :goto_19

    :sswitch_8
    const-string v7, "o"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_37

    goto :goto_18

    :cond_37
    const/4 v7, 0x0

    :goto_19
    packed-switch v7, :pswitch_data_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    :goto_1a
    const/4 v8, 0x0

    goto :goto_17

    :pswitch_14
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    :goto_1b
    move/from16 v4, v38

    goto :goto_1c

    :sswitch_9
    const-string/jumbo v7, "s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    goto :goto_1b

    :cond_38
    const/4 v4, 0x3

    goto :goto_1c

    :sswitch_a
    const-string v7, "n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_1b

    :cond_39
    const/4 v4, 0x2

    goto :goto_1c

    :sswitch_b
    const-string v7, "i"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto :goto_1b

    :cond_3a
    const/4 v4, 0x1

    goto :goto_1c

    :sswitch_c
    const-string v7, "a"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_1b

    :cond_3b
    const/4 v4, 0x0

    :goto_1c
    packed-switch v4, :pswitch_data_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Unknown mask mode "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Defaulting to Add."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    :pswitch_15
    const/4 v4, 0x1

    goto :goto_1a

    :pswitch_16
    const/4 v4, 0x2

    goto :goto_1a

    :pswitch_17
    const/4 v4, 0x4

    goto :goto_1a

    :pswitch_18
    const-string v4, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    const/4 v4, 0x3

    goto :goto_1a

    :pswitch_19
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextBoolean()Z

    move-result v2

    goto :goto_1a

    :pswitch_1a
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v6

    sget-object v7, Lcom/airbnb/lottie/parser/ShapeDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/ShapeDataParser;

    const/4 v8, 0x0

    invoke-static {v0, v1, v6, v7, v8}, Lcom/airbnb/lottie/parser/KeyframesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x6

    invoke-direct {v3, v6, v7}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;I)V

    goto/16 :goto_17

    :pswitch_1b
    const/4 v8, 0x0

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseInteger(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v5

    goto/16 :goto_17

    :cond_3c
    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v6, Lcom/airbnb/lottie/model/content/Mask;

    invoke-direct {v6, v4, v3, v5, v2}, Lcom/airbnb/lottie/model/content/Mask;-><init>(ILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Z)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_3d
    const/4 v8, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v1, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_1d

    :pswitch_1c
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v2

    const/16 v40, 0x6

    invoke-static/range {v40 .. v40}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_3f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported matte type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_3e
    :goto_1d
    move-object/from16 v2, v42

    move-object/from16 v3, v43

    move/from16 v6, v44

    :goto_1e
    move-wide/from16 v7, v45

    goto/16 :goto_0

    :cond_3f
    invoke-static/range {v40 .. v40}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v3

    aget v31, v3, v2

    invoke-static/range {v31 .. v31}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_41

    const/4 v4, 0x4

    if-eq v2, v4, :cond_40

    goto :goto_1f

    :cond_40
    const-string v2, "Unsupported matte type: Luma Inverted"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_1f

    :cond_41
    const-string v2, "Unsupported matte type: Luma"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :goto_1f
    iget v2, v1, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    const/16 v41, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/airbnb/lottie/LottieComposition;->maskAndMatteCount:I

    goto :goto_1d

    :pswitch_1d
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    const/4 v8, 0x0

    const/16 v41, 0x1

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v19

    goto :goto_1e

    :pswitch_1e
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    const/4 v8, 0x0

    const/16 v41, 0x1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    :goto_20
    move-object/from16 v2, v42

    goto :goto_1e

    :pswitch_1f
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    const/4 v8, 0x0

    const/16 v41, 0x1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    move/from16 v23, v2

    :goto_21
    move-object/from16 v2, v42

    move-object/from16 v3, v43

    goto :goto_1e

    :pswitch_20
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    const/4 v8, 0x0

    const/16 v41, 0x1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    move/from16 v22, v2

    goto :goto_21

    :pswitch_21
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    const/4 v8, 0x0

    const/16 v41, 0x1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v2

    int-to-long v2, v2

    move-wide v7, v2

    goto/16 :goto_2

    :pswitch_22
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    const/4 v8, 0x0

    const/16 v41, 0x1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v2

    const/16 v20, 0x7

    const/4 v7, 0x6

    if-ge v2, v7, :cond_3e

    invoke-static/range {v20 .. v20}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v3

    aget v20, v3, v2

    goto/16 :goto_1d

    :pswitch_23
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    const/4 v8, 0x0

    const/16 v41, 0x1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1e

    :pswitch_24
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    const/4 v8, 0x0

    const/16 v41, 0x1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v2

    int-to-long v13, v2

    goto/16 :goto_20

    :pswitch_25
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    const/4 v8, 0x0

    const/16 v41, 0x1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1e

    :cond_42
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    move/from16 v44, v6

    move-wide/from16 v45, v7

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v0, v17, v36

    if-lez v0, :cond_43

    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v4, 0x0

    move-object/from16 v3, v42

    move-object/from16 v2, v42

    move-object/from16 v11, v43

    move/from16 v8, v44

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;FLjava/lang/Float;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_43
    move-object/from16 v11, v43

    move/from16 v8, v44

    :goto_22
    cmpl-float v0, v18, v36

    if-lez v0, :cond_44

    goto :goto_23

    :cond_44
    iget v0, v1, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    move/from16 v18, v0

    :goto_23
    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v4, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v3, v16

    move-object/from16 v2, v16

    move/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;FLjava/lang/Float;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/airbnb/lottie/value/Keyframe;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v3, v42

    move-object/from16 v1, p1

    move/from16 v5, v18

    move-object/from16 v2, v42

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;FLjava/lang/Float;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "ai"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_45
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_46
    if-eqz v8, :cond_48

    if-nez v19, :cond_47

    new-instance v19, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    invoke-direct/range {v19 .. v19}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    :cond_47
    move-object/from16 v0, v19

    iput-boolean v8, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->autoOrient:Z

    move-object v11, v0

    goto :goto_24

    :cond_48
    move-object/from16 v11, v19

    :goto_24
    new-instance v0, Lcom/airbnb/lottie/model/layer/Layer;

    move-object v2, v1

    move-object v1, v9

    move-object v3, v12

    move-wide v4, v13

    move/from16 v6, v20

    move-object/from16 v9, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move/from16 v14, v24

    move/from16 v17, v25

    move/from16 v18, v26

    move/from16 v16, v27

    move/from16 v24, v28

    move-object/from16 v25, v29

    move-object/from16 v26, v30

    move/from16 v22, v31

    move/from16 v27, v32

    move-object/from16 v19, v33

    move-object/from16 v20, v34

    move-object/from16 v23, v35

    move-object/from16 v21, v7

    move-wide/from16 v7, v45

    invoke-direct/range {v0 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JIJLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFFFLcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/util/List;ILcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/google/android/gms/tasks/zza;Lcom/motorola/camera/AppFeatures;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6f -> :sswitch_8
        0xe04 -> :sswitch_7
        0x197f1 -> :sswitch_6
        0x3339a3 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_14
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_c
        0x69 -> :sswitch_b
        0x6e -> :sswitch_a
        0x73 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_15
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch
.end method
