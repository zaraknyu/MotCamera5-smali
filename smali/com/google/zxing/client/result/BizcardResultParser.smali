.class public final Lcom/google/zxing/client/result/BizcardResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/client/result/BizcardResultParser;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/google/zxing/Result;)Landroidx/media3/decoder/Buffer;
    .locals 24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/client/result/BizcardResultParser;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "MEBKM:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "TITLE:"

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-static {v1, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    aget-object v1, v1, v5

    :goto_0
    const-string v6, "URL:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v2

    :pswitch_0
    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MECARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    goto/16 :goto_9

    :cond_4
    const-string v1, "N:"

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-static {v1, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto/16 :goto_9

    :cond_5
    const/4 v5, 0x0

    aget-object v1, v1, v5

    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string v6, "SOUND:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    move-object v10, v2

    goto :goto_2

    :cond_7
    aget-object v6, v6, v5

    move-object v10, v6

    :goto_2
    const-string v6, "TEL:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v11

    const-string v6, "EMAIL:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v13

    const-string v6, "NOTE:"

    invoke-static {v6, v0, v3, v5}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    move-object/from16 v16, v2

    goto :goto_3

    :cond_8
    aget-object v6, v6, v5

    move-object/from16 v16, v6

    :goto_3
    const-string v6, "ADR:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v17

    const-string v6, "BDAY:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    move-object v6, v2

    goto :goto_4

    :cond_9
    aget-object v6, v6, v5

    :goto_4
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-ne v8, v7, :cond_a

    sget-object v7, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_a

    move-object/from16 v20, v6

    goto :goto_5

    :cond_a
    move-object/from16 v20, v2

    :goto_5
    const-string v6, "URL:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v22

    const-string v6, "ORG:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move-object/from16 v19, v2

    goto :goto_6

    :cond_b
    aget-object v0, v0, v5

    move-object/from16 v19, v0

    :goto_6
    new-instance v7, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v1, :cond_c

    :goto_7
    move-object v8, v2

    goto :goto_8

    :cond_c
    new-array v2, v4, [Ljava/lang/String;

    aput-object v1, v2, v5

    goto :goto_7

    :goto_8
    const/16 v21, 0x0

    const/16 v23, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v7 .. v23}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object v2, v7

    :goto_9
    return-object v2

    :pswitch_1
    move-object/from16 v0, p1

    invoke-static {v0}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BIZCARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    goto/16 :goto_17

    :cond_d
    const-string v1, "N:"

    const/16 v3, 0x3b

    const/4 v4, 0x1

    invoke-static {v1, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    if-nez v1, :cond_e

    move-object v1, v2

    goto :goto_a

    :cond_e
    aget-object v1, v1, v5

    :goto_a
    const-string v6, "X:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_f

    move-object v6, v2

    goto :goto_b

    :cond_f
    aget-object v6, v6, v5

    :goto_b
    if-nez v1, :cond_10

    move-object v1, v6

    goto :goto_c

    :cond_10
    if-nez v6, :cond_11

    goto :goto_c

    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c
    const-string v6, "T:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_12

    move-object/from16 v21, v2

    goto :goto_d

    :cond_12
    aget-object v6, v6, v5

    move-object/from16 v21, v6

    :goto_d
    const-string v6, "C:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_13

    move-object/from16 v19, v2

    goto :goto_e

    :cond_13
    aget-object v6, v6, v5

    move-object/from16 v19, v6

    :goto_e
    const-string v6, "A:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v17

    const-string v6, "B:"

    invoke-static {v6, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_14

    move-object v6, v2

    goto :goto_f

    :cond_14
    aget-object v6, v6, v5

    :goto_f
    const-string v7, "M:"

    invoke-static {v7, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_15

    move-object v7, v2

    goto :goto_10

    :cond_15
    aget-object v7, v7, v5

    :goto_10
    const-string v8, "F:"

    invoke-static {v8, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_16

    move-object v8, v2

    goto :goto_11

    :cond_16
    aget-object v8, v8, v5

    :goto_11
    const-string v9, "E:"

    invoke-static {v9, v0, v3, v4}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    move-object v0, v2

    goto :goto_12

    :cond_17
    aget-object v0, v0, v5

    :goto_12
    new-instance v3, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v1, :cond_18

    move-object v9, v2

    goto :goto_13

    :cond_18
    new-array v9, v4, [Ljava/lang/String;

    aput-object v1, v9, v5

    :goto_13
    new-instance v1, Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v6, :cond_19

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    if-eqz v7, :cond_1a

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-eqz v8, :cond_1b

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1c

    move-object v11, v2

    goto :goto_14

    :cond_1c
    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v11, v1

    :goto_14
    if-nez v0, :cond_1d

    :goto_15
    move-object v13, v2

    goto :goto_16

    :cond_1d
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    goto :goto_15

    :goto_16
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v23}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object v2, v7

    :goto_17
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
