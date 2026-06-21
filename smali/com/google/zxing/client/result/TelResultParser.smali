.class public final Lcom/google/zxing/client/result/TelResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/client/result/TelResultParser;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNumberVia(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "via="

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v3, v0

    move v2, v1

    :goto_0
    const/4 v4, 0x3

    if-gt v2, v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    invoke-static {v5, p1, v6, v1}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, v0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    aget-object v5, v5, v6

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    return-object v0

    :cond_4
    sget-object p0, Lcom/google/zxing/client/result/ResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final parse(Lcom/google/zxing/Result;)Landroidx/media3/decoder/Buffer;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/zxing/client/result/TelResultParser;->$r8$classId:I

    const/16 v2, 0xc

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    const/16 v4, 0x8

    const/16 v6, 0x3f

    const/16 v7, 0x3b

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x3a

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S:"

    invoke-static {v1, v0, v7, v8}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, v16

    goto :goto_0

    :cond_1
    aget-object v1, v1, v8

    :goto_0
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_b

    :cond_2
    const-string v2, "P:"

    invoke-static {v2, v0, v7, v8}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object/from16 v2, v16

    goto :goto_1

    :cond_3
    aget-object v2, v2, v8

    :goto_1
    const-string v3, "T:"

    invoke-static {v3, v0, v7, v8}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move-object/from16 v3, v16

    goto :goto_2

    :cond_4
    aget-object v3, v3, v8

    :goto_2
    if-nez v3, :cond_5

    const-string v3, "nopass"

    :cond_5
    const-string v4, "PH2:"

    invoke-static {v4, v0, v7, v8}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move-object/from16 v4, v16

    goto :goto_3

    :cond_6
    aget-object v4, v4, v8

    :goto_3
    const-string v5, "H:"

    invoke-static {v5, v0, v7, v8}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    :goto_4
    move-object/from16 v5, v16

    goto :goto_5

    :cond_7
    aget-object v16, v5, v8

    goto :goto_4

    :goto_5
    if-eqz v5, :cond_8

    if-nez v4, :cond_9

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    move v4, v8

    goto :goto_7

    :cond_9
    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_7
    const-string v5, "I:"

    invoke-static {v5, v0, v7, v8}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_8

    :cond_a
    aget-object v5, v5, v8

    :goto_8
    const-string v5, "A:"

    invoke-static {v5, v0, v7, v8}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_9

    :cond_b
    aget-object v5, v5, v8

    :goto_9
    const-string v5, "E:"

    invoke-static {v5, v0, v7, v8}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_a

    :cond_c
    aget-object v0, v0, v8

    :goto_a
    new-instance v0, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v16, v0

    :cond_d
    :goto_b
    return-object v16

    :pswitch_0
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_e

    goto/16 :goto_10

    :cond_e
    const-string v1, "SUMMARY"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "DTSTART"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_f

    goto/16 :goto_10

    :cond_f
    const-string v1, "DTEND"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v1, "DURATION"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "LOCATION"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v1, "ORGANIZER"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAILTO:"

    const-string v3, "mailto:"

    if-eqz v1, :cond_11

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_11
    move-object/from16 v23, v1

    const-string v1, "ATTENDEE"

    invoke-static {v1, v0, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_d

    :cond_12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v6, v4, [Ljava/lang/String;

    move v9, v8

    :goto_c
    if-ge v9, v4, :cond_14

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_13
    :goto_d
    move-object/from16 v6, v16

    :cond_14
    if-eqz v6, :cond_17

    move v1, v8

    :goto_e
    array-length v4, v6

    if-ge v1, v4, :cond_17

    aget-object v4, v6, v1

    if-eqz v4, :cond_16

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    :cond_15
    invoke-virtual {v4, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_16
    aput-object v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_17
    const-string v1, "DESCRIPTION"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v1, "GEO"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v26, v0

    move-wide/from16 v28, v26

    goto :goto_f

    :cond_18
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_19

    goto :goto_10

    :cond_19
    :try_start_0
    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v28, v0

    move-wide/from16 v26, v2

    :goto_f
    :try_start_1
    new-instance v17, Lcom/google/zxing/client/result/CalendarParsedResult;

    move-object/from16 v24, v6

    invoke-direct/range {v17 .. v29}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v17

    :catch_0
    :goto_10
    return-object v16

    :pswitch_1
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urlto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "URLTO:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_13

    :cond_1a
    invoke-virtual {v0, v11, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_1b

    goto :goto_13

    :cond_1b
    if-gt v1, v13, :cond_1c

    :goto_11
    move-object/from16 v2, v16

    goto :goto_12

    :cond_1c
    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_11

    :goto_12
    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v1

    :goto_13
    return-object v16

    :pswitch_2
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "smtp:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "SMTP:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_16

    :cond_1d
    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1f

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1e

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    :goto_14
    move-object/from16 v6, v16

    goto :goto_15

    :cond_1e
    move-object v5, v2

    goto :goto_14

    :cond_1f
    move-object/from16 v5, v16

    move-object v6, v5

    :goto_15
    new-instance v1, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v1

    :goto_16
    return-object v16

    :pswitch_3
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "SMSTO:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "mmsto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "MMSTO:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_17

    :cond_20
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_21

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_21
    move-object/from16 v1, v16

    new-instance v2, Lcom/google/zxing/client/result/SMSParsedResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v2

    :goto_17
    return-object v16

    :pswitch_4
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sms:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "SMS:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "mms:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "MMS:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_1c

    :cond_22
    invoke-static {v0}, Lcom/google/zxing/client/result/ResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    const-string/jumbo v2, "subject"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    const-string v2, "body"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    move v8, v5

    move-object/from16 v1, v16

    goto :goto_18

    :cond_23
    move-object/from16 v1, v16

    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_25

    if-nez v8, :cond_24

    goto :goto_19

    :cond_24
    invoke-virtual {v0, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_25
    :goto_19
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, -0x1

    :goto_1b
    add-int/lit8 v6, v5, 0x1

    const/16 v7, 0x2c

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-le v7, v5, :cond_26

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/zxing/client/result/TelResultParser;->addNumberVia(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    move v5, v7

    goto :goto_1b

    :cond_26
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/google/zxing/client/result/TelResultParser;->addNumberVia(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance v0, Lcom/google/zxing/client/result/SMSParsedResult;

    sget-object v5, Lcom/google/zxing/client/result/ResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v0

    :goto_1c
    return-object v16

    :pswitch_5
    iget-object v0, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/BarcodeFormat;

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v6, :cond_27

    if-eq v0, v7, :cond_27

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v6, :cond_27

    if-eq v0, v3, :cond_27

    goto/16 :goto_1f

    :cond_27
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_2a

    sget-object v3, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2a

    if-ne v0, v7, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_29

    sget v0, Lcom/google/zxing/oned/UPCEReader;->$r8$clinit:I

    new-array v0, v13, [C

    invoke-virtual {v1, v5, v12, v0, v8}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-char v2, v0, v14

    const-string v5, "00000"

    const-string v6, "0000"

    packed-switch v2, :pswitch_data_1

    invoke-virtual {v3, v0, v8, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :pswitch_6
    invoke-virtual {v3, v0, v8, v15}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v0, v0, v15

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :pswitch_7
    invoke-virtual {v3, v0, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1d

    :pswitch_8
    invoke-virtual {v3, v0, v8, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v10, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_1d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_28

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_29
    move-object v0, v1

    :goto_1e
    new-instance v2, Lcom/google/zxing/client/result/ProductParsedResult;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/client/result/ProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v2

    :cond_2a
    :goto_1f
    return-object v16

    :pswitch_9
    iget-object v0, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v3, :cond_2b

    goto :goto_20

    :cond_2b
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2c

    goto :goto_20

    :cond_2c
    const-string v1, "978"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "979"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_20

    :cond_2d
    new-instance v1, Lcom/google/zxing/client/result/ISBNParsedResult;

    invoke-direct {v1, v0}, Lcom/google/zxing/client/result/ISBNParsedResult;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v1

    :goto_20
    return-object v16

    :pswitch_a
    iget-object v0, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/BarcodeFormat;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    if-eq v0, v3, :cond_2e

    goto/16 :goto_29

    :cond_2e
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v3, v8

    move-object/from16 v19, v16

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    :goto_21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_57

    invoke-static {v3, v0}, Lcom/google/zxing/client/result/TelResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2f

    goto/16 :goto_29

    :cond_2f
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v10

    add-int/2addr v7, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move v2, v8

    :goto_22
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_32

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v10, 0x28

    if-ne v4, v10, :cond_31

    invoke-static {v2, v11}, Lcom/google/zxing/client/result/TelResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    goto :goto_24

    :cond_30
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_23
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x2

    goto :goto_22

    :cond_32
    :goto_24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_25
    const/4 v4, -0x1

    goto/16 :goto_26

    :sswitch_0
    const-string v4, "3933"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    goto :goto_25

    :cond_33
    const/16 v4, 0x22

    goto/16 :goto_26

    :sswitch_1
    const-string v4, "3932"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_25

    :cond_34
    const/16 v4, 0x21

    goto/16 :goto_26

    :sswitch_2
    const-string v4, "3931"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_25

    :cond_35
    const/16 v4, 0x20

    goto/16 :goto_26

    :sswitch_3
    const-string v4, "3930"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_25

    :cond_36
    const/16 v4, 0x1f

    goto/16 :goto_26

    :sswitch_4
    const-string v4, "3923"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    goto :goto_25

    :cond_37
    const/16 v4, 0x1e

    goto/16 :goto_26

    :sswitch_5
    const-string v4, "3922"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    goto :goto_25

    :cond_38
    const/16 v4, 0x1d

    goto/16 :goto_26

    :sswitch_6
    const-string v4, "3921"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_25

    :cond_39
    const/16 v4, 0x1c

    goto/16 :goto_26

    :sswitch_7
    const-string v4, "3920"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto :goto_25

    :cond_3a
    const/16 v4, 0x1b

    goto/16 :goto_26

    :sswitch_8
    const-string v4, "3209"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_25

    :cond_3b
    const/16 v4, 0x1a

    goto/16 :goto_26

    :sswitch_9
    const-string v4, "3208"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    goto/16 :goto_25

    :cond_3c
    const/16 v4, 0x19

    goto/16 :goto_26

    :sswitch_a
    const-string v4, "3207"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto/16 :goto_25

    :cond_3d
    const/16 v4, 0x18

    goto/16 :goto_26

    :sswitch_b
    const-string v4, "3206"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    goto/16 :goto_25

    :cond_3e
    const/16 v4, 0x17

    goto/16 :goto_26

    :sswitch_c
    const-string v4, "3205"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    goto/16 :goto_25

    :cond_3f
    const/16 v4, 0x16

    goto/16 :goto_26

    :sswitch_d
    const-string v4, "3204"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    goto/16 :goto_25

    :cond_40
    const/16 v4, 0x15

    goto/16 :goto_26

    :sswitch_e
    const-string v4, "3203"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto/16 :goto_25

    :cond_41
    const/16 v4, 0x14

    goto/16 :goto_26

    :sswitch_f
    const-string v4, "3202"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    goto/16 :goto_25

    :cond_42
    const/16 v4, 0x13

    goto/16 :goto_26

    :sswitch_10
    const-string v4, "3201"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    goto/16 :goto_25

    :cond_43
    const/16 v4, 0x12

    goto/16 :goto_26

    :sswitch_11
    const-string v4, "3200"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto/16 :goto_25

    :cond_44
    const/16 v4, 0x11

    goto/16 :goto_26

    :sswitch_12
    const-string v4, "3109"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    goto/16 :goto_25

    :cond_45
    const/16 v4, 0x10

    goto/16 :goto_26

    :sswitch_13
    const-string v4, "3108"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto/16 :goto_25

    :cond_46
    const/16 v4, 0xf

    goto/16 :goto_26

    :sswitch_14
    const-string v4, "3107"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    goto/16 :goto_25

    :cond_47
    const/16 v4, 0xe

    goto/16 :goto_26

    :sswitch_15
    const-string v4, "3106"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    goto/16 :goto_25

    :cond_48
    const/16 v4, 0xd

    goto/16 :goto_26

    :sswitch_16
    const-string v4, "3105"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    goto/16 :goto_25

    :cond_49
    const/16 v4, 0xc

    goto/16 :goto_26

    :sswitch_17
    const-string v4, "3104"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    goto/16 :goto_25

    :cond_4a
    const/16 v4, 0xb

    goto/16 :goto_26

    :sswitch_18
    const-string v4, "3103"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    goto/16 :goto_25

    :cond_4b
    const/16 v4, 0xa

    goto/16 :goto_26

    :sswitch_19
    const-string v4, "3102"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    goto/16 :goto_25

    :cond_4c
    const/16 v4, 0x9

    goto/16 :goto_26

    :sswitch_1a
    const-string v4, "3101"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto/16 :goto_25

    :cond_4d
    const/16 v4, 0x8

    goto/16 :goto_26

    :sswitch_1b
    const-string v4, "3100"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto/16 :goto_25

    :cond_4e
    move v4, v12

    goto :goto_26

    :sswitch_1c
    const-string v4, "17"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto/16 :goto_25

    :cond_4f
    move v4, v13

    goto :goto_26

    :sswitch_1d
    const-string v4, "15"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto/16 :goto_25

    :cond_50
    move v4, v14

    goto :goto_26

    :sswitch_1e
    const-string v4, "13"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    goto/16 :goto_25

    :cond_51
    move v4, v15

    goto :goto_26

    :sswitch_1f
    const-string v4, "11"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto/16 :goto_25

    :cond_52
    move v4, v9

    goto :goto_26

    :sswitch_20
    const-string v4, "10"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto/16 :goto_25

    :cond_53
    const/4 v4, 0x2

    goto :goto_26

    :sswitch_21
    const-string v4, "01"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    goto/16 :goto_25

    :cond_54
    move v4, v5

    goto :goto_26

    :sswitch_22
    const-string v4, "00"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    goto/16 :goto_25

    :cond_55
    move v4, v8

    :goto_26
    packed-switch v4, :pswitch_data_2

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :pswitch_b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v15, :cond_56

    goto :goto_29

    :cond_56
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_28

    :pswitch_c
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v28, v2

    goto :goto_28

    :pswitch_d
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    const-string v26, "LB"

    :goto_27
    move-object/from16 v25, v2

    goto :goto_28

    :pswitch_e
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    const-string v26, "KG"

    goto :goto_27

    :pswitch_f
    move-object/from16 v24, v2

    goto :goto_28

    :pswitch_10
    move-object/from16 v23, v2

    goto :goto_28

    :pswitch_11
    move-object/from16 v22, v2

    goto :goto_28

    :pswitch_12
    move-object/from16 v21, v2

    goto :goto_28

    :pswitch_13
    move-object/from16 v19, v2

    goto :goto_28

    :pswitch_14
    move-object/from16 v20, v2

    :goto_28
    :pswitch_15
    const/16 v2, 0xc

    const/16 v4, 0x8

    const/4 v10, 0x2

    goto/16 :goto_21

    :cond_57
    new-instance v17, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object/from16 v18, v0

    move-object/from16 v31, v1

    invoke-direct/range {v17 .. v31}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    move-object/from16 v16, v17

    :goto_29
    return-object v16

    :pswitch_16
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    goto/16 :goto_30

    :cond_58
    const-string v1, "NAME1:"

    const/16 v2, 0xd

    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_59

    move-object/from16 v1, v16

    goto :goto_2a

    :cond_59
    aget-object v1, v1, v8

    :goto_2a
    const-string v3, "NAME2:"

    invoke-static {v3, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5a

    move-object/from16 v20, v16

    goto :goto_2b

    :cond_5a
    aget-object v3, v3, v8

    move-object/from16 v20, v3

    :goto_2b
    const-string v3, "TEL"

    invoke-static {v3, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const-string v3, "MAIL"

    invoke-static {v3, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const-string v3, "MEMORY:"

    invoke-static {v3, v0, v2, v8}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5b

    move-object/from16 v26, v16

    goto :goto_2c

    :cond_5b
    aget-object v3, v3, v8

    move-object/from16 v26, v3

    :goto_2c
    const-string v3, "ADD:"

    invoke-static {v3, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5c

    move-object/from16 v0, v16

    goto :goto_2d

    :cond_5c
    aget-object v0, v0, v8

    :goto_2d
    if-nez v0, :cond_5d

    move-object/from16 v27, v16

    goto :goto_2e

    :cond_5d
    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v8

    move-object/from16 v27, v2

    :goto_2e
    new-instance v17, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v1, :cond_5e

    move-object/from16 v18, v16

    goto :goto_2f

    :cond_5e
    new-array v0, v5, [Ljava/lang/String;

    aput-object v1, v0, v8

    move-object/from16 v18, v0

    :goto_2f
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v17 .. v33}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v16, v17

    :cond_5f
    :goto_30
    return-object v16

    :pswitch_17
    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TEL:"

    if-nez v1, :cond_60

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_32

    :cond_60
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    :cond_61
    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_62

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_62
    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_31
    new-instance v1, Lcom/google/zxing/client/result/TelParsedResult;

    invoke-direct {v1, v0}, Lcom/google/zxing/client/result/TelParsedResult;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v1

    :goto_32
    return-object v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_22
        0x601 -> :sswitch_21
        0x61f -> :sswitch_20
        0x620 -> :sswitch_1f
        0x622 -> :sswitch_1e
        0x624 -> :sswitch_1d
        0x626 -> :sswitch_1c
        0x17ecde -> :sswitch_1b
        0x17ecdf -> :sswitch_1a
        0x17ece0 -> :sswitch_19
        0x17ece1 -> :sswitch_18
        0x17ece2 -> :sswitch_17
        0x17ece3 -> :sswitch_16
        0x17ece4 -> :sswitch_15
        0x17ece5 -> :sswitch_14
        0x17ece6 -> :sswitch_13
        0x17ece7 -> :sswitch_12
        0x17f09f -> :sswitch_11
        0x17f0a0 -> :sswitch_10
        0x17f0a1 -> :sswitch_f
        0x17f0a2 -> :sswitch_e
        0x17f0a3 -> :sswitch_d
        0x17f0a4 -> :sswitch_c
        0x17f0a5 -> :sswitch_b
        0x17f0a6 -> :sswitch_a
        0x17f0a7 -> :sswitch_9
        0x17f0a8 -> :sswitch_8
        0x180b24 -> :sswitch_7
        0x180b25 -> :sswitch_6
        0x180b26 -> :sswitch_5
        0x180b27 -> :sswitch_4
        0x180b43 -> :sswitch_3
        0x180b44 -> :sswitch_2
        0x180b45 -> :sswitch_1
        0x180b46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_15
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
