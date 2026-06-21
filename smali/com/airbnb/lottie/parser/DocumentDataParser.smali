.class public final Lcom/airbnb/lottie/parser/DocumentDataParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# static fields
.field public static final INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

.field public static final NAMES:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/airbnb/lottie/parser/DocumentDataParser;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->INSTANCE:Lcom/airbnb/lottie/parser/DocumentDataParser;

    const-string/jumbo v12, "ps"

    const-string/jumbo v13, "sz"

    const-string/jumbo v1, "t"

    const-string v2, "f"

    const-string/jumbo v3, "s"

    const-string v4, "j"

    const-string/jumbo v5, "tr"

    const-string v6, "lh"

    const-string v7, "ls"

    const-string v8, "fc"

    const-string/jumbo v9, "sc"

    const-string/jumbo v10, "sw"

    const-string v11, "of"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tinder/StateMachine;->of([Ljava/lang/String;)Lcom/tinder/StateMachine;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/DocumentDataParser;->NAMES:Lcom/tinder/StateMachine;

    return-void
.end method


# virtual methods
.method public final parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v1

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v4

    const/4 v13, 0x3

    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Lcom/airbnb/lottie/parser/DocumentDataParser;->NAMES:Lcom/tinder/StateMachine;

    move-object/from16 v15, p1

    invoke-virtual {v15, v14}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/tinder/StateMachine;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    invoke-virtual {v15}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {v15}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v15}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    new-instance v4, Landroid/graphics/PointF;

    move-object v14, v3

    const/16 p0, 0x3

    invoke-virtual {v15}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, p2

    move-object v3, v14

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v14, v14, p2

    invoke-direct {v4, v2, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v2, v14

    mul-float v2, v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v14, v14, p2

    invoke-direct {v3, v2, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v12

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v8, v14

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x3

    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;)I

    move-result v11

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x3

    invoke-static/range {p1 .. p1}, Lcom/airbnb/lottie/parser/JsonUtils;->jsonToColor(Lcom/airbnb/lottie/parser/moshi/JsonReader;)I

    move-result v10

    goto :goto_0

    :pswitch_6
    const/16 p0, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v7, v14

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v6, v14

    goto :goto_0

    :pswitch_8
    const/16 p0, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v9

    goto/16 :goto_0

    :pswitch_9
    const/16 p0, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v2

    const/4 v13, 0x2

    if-gt v2, v13, :cond_1

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static/range {p0 .. p0}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v13

    aget v13, v13, v2

    goto/16 :goto_0

    :cond_1
    :goto_1
    move/from16 v13, p0

    goto/16 :goto_0

    :pswitch_a
    const/16 p0, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v5, v14

    goto/16 :goto_0

    :pswitch_b
    const/16 p0, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_c
    const/16 p0, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    new-instance v2, Lcom/airbnb/lottie/model/DocumentData;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iput-object v1, v2, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    iput v5, v2, Lcom/airbnb/lottie/model/DocumentData;->size:F

    iput v13, v2, Lcom/airbnb/lottie/model/DocumentData;->justification:I

    iput v9, v2, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    iput v6, v2, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    iput v7, v2, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    iput v10, v2, Lcom/airbnb/lottie/model/DocumentData;->color:I

    iput v11, v2, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    iput v8, v2, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    iput-boolean v12, v2, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    move-object v14, v3

    iput-object v14, v2, Lcom/airbnb/lottie/model/DocumentData;->boxPosition:Landroid/graphics/PointF;

    iput-object v4, v2, Lcom/airbnb/lottie/model/DocumentData;->boxSize:Landroid/graphics/PointF;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
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
.end method
