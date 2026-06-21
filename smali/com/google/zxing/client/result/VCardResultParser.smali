.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SourceFile"


# static fields
.field public static final BEGIN_VCARD:Ljava/util/regex/Pattern;

.field public static final COMMA:Ljava/util/regex/Pattern;

.field public static final CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

.field public static final EQUALS:Ljava/util/regex/Pattern;

.field public static final NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

.field public static final SEMICOLON:Ljava/util/regex/Pattern;

.field public static final SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

.field public static final UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

.field public static final VCARD_ESCAPES:Ljava/util/regex/Pattern;

.field public static final VCARD_LIKE_DATE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    const-string v0, "\r\n[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    const-string v0, "\\\\[nN]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    const-string v0, "\\\\([,;\\\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    const-string v0, "(?<!\\\\);+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    const-string v0, "[;,]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1b

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(?:^|\n)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "(?:;([^:]*))?:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v6, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    if-lez v4, :cond_0

    add-int/lit8 v4, v4, -0x1

    :cond_0
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_e

    :cond_1
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    sget-object v10, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    move v11, v3

    move v13, v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget-object v2, v6, v11

    if-nez v12, :cond_2

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    :cond_2
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v3

    sget-object v3, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-le v3, v9, :cond_5

    aget-object v3, v2, v16

    aget-object v2, v2, v9

    const-string v8, "ENCODING"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "QUOTED-PRINTABLE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v13, v9

    goto :goto_2

    :cond_3
    const-string v8, "CHARSET"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v14, v2

    goto :goto_2

    :cond_4
    const-string v8, "VALUE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v15, v2

    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    const/4 v8, 0x2

    goto :goto_1

    :cond_6
    move/from16 v16, v3

    goto :goto_3

    :cond_7
    move/from16 v16, v3

    move/from16 v13, v16

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    move v2, v4

    :goto_4
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/16 v6, 0x3d

    if-ltz v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    if-ge v2, v8, :cond_9

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_8

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x9

    if-ne v8, v10, :cond_9

    :cond_8
    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    :cond_9
    if-eqz v13, :cond_c

    if-lt v2, v9, :cond_a

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v6, :cond_b

    :cond_a
    const/4 v8, 0x2

    goto :goto_5

    :cond_b
    const/4 v8, 0x2

    goto :goto_6

    :goto_5
    if-lt v2, v8, :cond_c

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_c

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    if-gez v2, :cond_d

    move v4, v1

    move/from16 v3, v16

    goto/16 :goto_d

    :cond_d
    if-le v2, v4, :cond_1a

    if-nez v5, :cond_e

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    :cond_e
    const/16 v8, 0xd

    if-lt v2, v9, :cond_f

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_f

    add-int/lit8 v2, v2, -0x1

    :cond_f
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_10
    sget-object v10, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    const-string v11, "\n"

    if-eqz v13, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    move/from16 v17, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move/from16 v8, v16

    :goto_7
    if-ge v8, v13, :cond_14

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_13

    const/16 v3, 0xd

    if-eq v0, v3, :cond_12

    const/16 v3, 0x3d

    if-eq v0, v3, :cond_11

    invoke-static {v6, v14, v9}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_11
    add-int/lit8 v0, v13, -0x2

    if-ge v8, v0, :cond_12

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_12

    const/16 v3, 0xa

    if-eq v0, v3, :cond_13

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static {v0}, Lcom/google/zxing/client/result/ResultParser;->parseHexDigit(C)I

    move-result v0

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/ResultParser;->parseHexDigit(C)I

    move-result v18

    if-ltz v0, :cond_13

    if-ltz v18, :cond_13

    shl-int/lit8 v0, v0, 0x4

    add-int v0, v0, v18

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_9

    :cond_12
    :goto_8
    const/16 v3, 0xa

    :cond_13
    :goto_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    goto :goto_7

    :cond_14
    invoke-static {v6, v14, v9}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_17

    invoke-virtual {v10, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_15
    move/from16 v17, v9

    if-eqz p3, :cond_16

    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_16
    sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v3, "$1"

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_17
    :goto_a
    const-string/jumbo v3, "uri"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :try_start_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_18
    if-nez v12, :cond_19

    new-instance v3, Ljava/util/ArrayList;

    move/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    move/from16 v3, v16

    invoke-interface {v12, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move v4, v2

    goto :goto_d

    :cond_1a
    :goto_c
    move/from16 v3, v16

    goto :goto_b

    :goto_d
    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_1b
    :goto_e
    return-object v5
.end method

.method public static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 1

    aget-object v0, p0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toPrimaryValues(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/zxing/client/result/ResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toTypes(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, "TYPE"

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v5, v0

    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/google/zxing/client/result/ResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_6
    :goto_3
    return-object v0
.end method


# virtual methods
.method public final parse(Lcom/google/zxing/Result;)Landroidx/media3/decoder/Buffer;
    .locals 24

    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 p0, 0x0

    goto/16 :goto_7

    :cond_1
    const-string v1, "FN"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x2

    if-nez v1, :cond_3

    const-string v1, "N"

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    move v10, v4

    move v11, v10

    :goto_1
    const/4 v12, 0x4

    if-ge v10, v12, :cond_2

    const/16 v13, 0x3b

    invoke-virtual {v8, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-ltz v13, :cond_2

    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v13, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v10, 0x3

    invoke-static {v9, v10, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v2, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v5, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v4, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-static {v9, v12, v8}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v6, "NICKNAME"

    invoke-static {v6, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    sget-object v7, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    :goto_2
    const-string v6, "TEL"

    invoke-static {v6, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "EMAIL"

    invoke-static {v7, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "NOTE"

    invoke-static {v8, v0, v4, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v8

    const-string v10, "ADR"

    invoke-static {v10, v0, v2, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v10

    const-string v11, "ORG"

    invoke-static {v11, v0, v2, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v11

    const-string v12, "BDAY"

    invoke-static {v12, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    if-eqz v13, :cond_6

    sget-object v14, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :cond_6
    :goto_3
    const-string v13, "TITLE"

    invoke-static {v13, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v13

    const-string v14, "URL"

    invoke-static {v14, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v14

    const-string v15, "IMPP"

    invoke-static {v15, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v15

    const/16 p0, 0x0

    const-string v3, "GEO"

    invoke-static {v3, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    move-object/from16 v0, p0

    goto :goto_4

    :cond_7
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_8

    array-length v2, v0

    if-eq v2, v5, :cond_8

    move-object/from16 v23, p0

    :goto_5
    move-object v0, v7

    goto :goto_6

    :cond_8
    move-object/from16 v23, v0

    goto :goto_5

    :goto_6
    new-instance v7, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v1

    move-object v2, v11

    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v3

    move-object v4, v13

    invoke-static {v0}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v0}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v15}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v8}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v10}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v17

    invoke-static {v10}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v18

    invoke-static {v2}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v12}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v4}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v21

    invoke-static {v14}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v22

    const/4 v10, 0x0

    move-object v14, v0

    move-object v8, v1

    move-object v12, v3

    invoke-direct/range {v7 .. v23}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v7

    :goto_7
    return-object p0
.end method
