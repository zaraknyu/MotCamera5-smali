.class public abstract Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ASSETS_NAMES:Lcom/tinder/StateMachine;

.field public static final FONT_NAMES:Lcom/tinder/StateMachine;

.field public static final MARKER_NAMES:Lcom/tinder/StateMachine;

.field public static final NAMES:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "chars"

    const-string v10, "markers"

    const-string/jumbo v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string/jumbo v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/tinder/StateMachine;

    const-string v5, "p"

    const-string/jumbo v6, "u"

    const-string v1, "id"

    const-string v2, "layers"

    const-string/jumbo v3, "w"

    const-string v4, "h"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/tinder/StateMachine;

    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/tinder/StateMachine;

    const-string/jumbo v0, "tm"

    const-string v1, "dr"

    const-string v2, "cm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/tinder/StateMachine;

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 32

    move-object/from16 v0, p0

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v1

    new-instance v2, Landroidx/collection/LongSparseArray;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Landroidx/collection/SparseArrayCompat;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    new-instance v11, Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v11}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    move v13, v10

    move v14, v13

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2a

    sget-object v3, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    move/from16 v24, v1

    move-object v3, v11

    move/from16 v21, v14

    move/from16 v22, v15

    goto/16 :goto_17

    :pswitch_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v3, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_2
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    sget-object v10, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v10}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v10

    if-eqz v10, :cond_2

    move/from16 v24, v1

    const/4 v1, 0x1

    if-eq v10, v1, :cond_1

    const/4 v1, 0x2

    if-eq v10, v1, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    :goto_3
    move/from16 v1, v24

    goto :goto_2

    :cond_0
    move v1, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v14

    double-to-float v14, v14

    move v15, v10

    move/from16 v22, v14

    :goto_4
    move v14, v1

    goto :goto_3

    :cond_1
    move v1, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v14

    double-to-float v14, v14

    move v15, v10

    move/from16 v21, v14

    goto :goto_4

    :cond_2
    move/from16 v24, v1

    move v1, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    move/from16 v24, v1

    move v1, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v14, Lcom/airbnb/lottie/model/Marker;

    move/from16 v15, v21

    move/from16 v21, v1

    move/from16 v1, v22

    invoke-direct {v14, v3, v15, v1}, Lcom/airbnb/lottie/model/Marker;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v15, v10

    move/from16 v14, v21

    move/from16 v1, v24

    goto :goto_1

    :cond_4
    move/from16 v24, v1

    move/from16 v21, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    :goto_5
    move/from16 v22, v10

    :goto_6
    move-object v3, v11

    goto/16 :goto_17

    :pswitch_1
    move/from16 v24, v1

    move/from16 v21, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/tinder/StateMachine;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const-wide/16 v14, 0x0

    move-wide/from16 v28, v14

    const/16 v27, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v14, 0x1

    if-eq v3, v14, :cond_c

    const/4 v14, 0x2

    if-eq v3, v14, :cond_b

    const/4 v14, 0x3

    if-eq v3, v14, :cond_a

    const/4 v14, 0x4

    if-eq v3, v14, :cond_9

    const/4 v14, 0x5

    if-eq v3, v14, :cond_5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :goto_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/airbnb/lottie/parser/FontCharacterParser;->DATA_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_9

    :cond_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v0, v11}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/content/ShapeGroup;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_9

    :cond_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v31

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v30

    goto :goto_8

    :cond_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v28

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    move-result v27

    goto :goto_8

    :cond_e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v25, Lcom/airbnb/lottie/model/FontCharacter;

    move-object/from16 v26, v1

    invoke-direct/range {v25 .. v31}, Lcom/airbnb/lottie/model/FontCharacter;-><init>(Ljava/util/ArrayList;CDLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v25

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v3

    invoke-virtual {v9, v3, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto/16 :goto_5

    :pswitch_2
    move/from16 v24, v1

    move/from16 v21, v14

    move v10, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :goto_b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_b

    :cond_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_15

    sget-object v15, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v15}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v15

    if-eqz v15, :cond_14

    move/from16 v22, v10

    const/4 v10, 0x1

    if-eq v15, v10, :cond_13

    const/4 v10, 0x2

    if-eq v15, v10, :cond_12

    const/4 v10, 0x3

    if-eq v15, v10, :cond_11

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    :goto_e
    move/from16 v10, v22

    goto :goto_d

    :cond_11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    goto :goto_e

    :cond_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v14

    goto :goto_e

    :cond_13
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_14
    move/from16 v22, v10

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_15
    move/from16 v22, v10

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v10, Lcom/airbnb/lottie/model/Font;

    invoke-direct {v10, v1, v3, v14}, Lcom/airbnb/lottie/model/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v10, v22

    goto :goto_c

    :cond_16
    move/from16 v22, v10

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_b

    :cond_17
    move/from16 v22, v10

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    goto/16 :goto_6

    :pswitch_3
    move/from16 v24, v1

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroidx/collection/LongSparseArray;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    move-object/from16 v28, v10

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1f

    sget-object v14, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/tinder/StateMachine;

    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v14

    if-eqz v14, :cond_1e

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1c

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1b

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1a

    const/4 v15, 0x4

    if-eq v14, v15, :cond_19

    const/4 v15, 0x5

    if-eq v14, v15, :cond_18

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    move-object/from16 v17, v11

    goto :goto_12

    :cond_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v30

    goto :goto_10

    :cond_19
    const/4 v15, 0x5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v29

    goto :goto_10

    :cond_1a
    const/4 v15, 0x5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v27

    goto :goto_10

    :cond_1b
    const/4 v15, 0x5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v26

    goto :goto_10

    :cond_1c
    const/4 v15, 0x5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_11
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-static {v0, v11}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v14

    move-object/from16 v17, v11

    iget-wide v10, v14, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    invoke-virtual {v3, v10, v11, v14}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, v17

    const/4 v10, 0x0

    goto :goto_11

    :cond_1d
    move-object/from16 v17, v11

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    :goto_12
    move-object/from16 v11, v17

    :goto_13
    const/4 v10, 0x0

    goto :goto_10

    :cond_1e
    move-object/from16 v17, v11

    const/4 v15, 0x5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v28

    goto :goto_13

    :cond_1f
    move-object/from16 v17, v11

    const/4 v15, 0x5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    if-eqz v29, :cond_20

    new-instance v25, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-direct/range {v25 .. v30}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v25

    move-object/from16 v10, v28

    invoke-virtual {v6, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_20
    move-object/from16 v10, v28

    invoke-virtual {v5, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    move-object/from16 v11, v17

    goto/16 :goto_f

    :cond_21
    move-object/from16 v17, v11

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    move-object/from16 v3, v17

    goto/16 :goto_17

    :pswitch_4
    move/from16 v24, v1

    move-object/from16 v17, v11

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    move-object/from16 v3, v17

    invoke-static {v0, v3}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v10

    iget v11, v10, Lcom/airbnb/lottie/model/layer/Layer;->layerType:I

    const/4 v15, 0x3

    if-ne v11, v15, :cond_22

    add-int/lit8 v1, v1, 0x1

    :cond_22
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v14, v10, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    invoke-virtual {v2, v14, v15, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v15, 0x4

    if-le v1, v15, :cond_23

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "You have "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    :cond_23
    move-object/from16 v17, v3

    goto :goto_15

    :cond_24
    move-object/from16 v3, v17

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_17

    :pswitch_5
    move/from16 v24, v1

    move-object v3, v11

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string v10, "\\."

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x0

    aget-object v10, v1, v18

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v23, 0x1

    aget-object v11, v1, v23

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v20, 0x2

    aget-object v1, v1, v20

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v15, 0x4

    if-ge v10, v15, :cond_25

    goto :goto_16

    :cond_25
    if-le v10, v15, :cond_26

    goto :goto_17

    :cond_26
    if-ge v11, v15, :cond_27

    goto :goto_16

    :cond_27
    if-le v11, v15, :cond_28

    goto :goto_17

    :cond_28
    if-ltz v1, :cond_29

    goto :goto_17

    :cond_29
    :goto_16
    const-string v1, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v3, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :goto_17
    move-object v11, v3

    move/from16 v14, v21

    move/from16 v15, v22

    :goto_18
    move/from16 v1, v24

    :goto_19
    const/4 v3, 0x0

    const/4 v10, 0x0

    goto/16 :goto_0

    :pswitch_6
    move/from16 v24, v1

    move-object v3, v11

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v10

    double-to-float v1, v10

    move/from16 v16, v1

    :goto_1a
    move-object v11, v3

    goto :goto_18

    :pswitch_7
    move/from16 v24, v1

    move-object v3, v11

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v10

    double-to-float v1, v10

    const v10, 0x3c23d70a    # 0.01f

    sub-float v12, v1, v10

    goto :goto_1a

    :pswitch_8
    move/from16 v24, v1

    move-object v3, v11

    move/from16 v21, v14

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v10

    double-to-float v15, v10

    :goto_1b
    move-object v11, v3

    goto :goto_19

    :pswitch_9
    move/from16 v24, v1

    move-object v3, v11

    move/from16 v22, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v10

    double-to-int v14, v10

    goto :goto_1b

    :pswitch_a
    move/from16 v24, v1

    move-object v3, v11

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v10

    double-to-int v13, v10

    goto :goto_1b

    :cond_2a
    move/from16 v24, v1

    move-object v3, v11

    move/from16 v21, v14

    move/from16 v22, v15

    int-to-float v0, v13

    mul-float v0, v0, v24

    float-to-int v0, v0

    move/from16 v1, v21

    int-to-float v1, v1

    mul-float v1, v1, v24

    float-to-int v1, v1

    new-instance v10, Landroid/graphics/Rect;

    const/4 v14, 0x0

    invoke-direct {v10, v14, v14, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v0

    iput-object v10, v3, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    move/from16 v10, v22

    iput v10, v3, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    iput v12, v3, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    move/from16 v1, v16

    iput v1, v3, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    iput-object v4, v3, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/ArrayList;

    iput-object v2, v3, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    iput-object v5, v3, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/HashMap;

    iput-object v6, v3, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/HashMap;

    iput v0, v3, Lcom/airbnb/lottie/LottieComposition;->imagesDpScale:F

    iput-object v9, v3, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    iput-object v7, v3, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/HashMap;

    iput-object v8, v3, Lcom/airbnb/lottie/LottieComposition;->markers:Ljava/util/ArrayList;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
.end method
