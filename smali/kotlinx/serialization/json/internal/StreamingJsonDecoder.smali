.class public final Lkotlinx/serialization/json/internal/StreamingJsonDecoder;
.super Landroidx/compose/ui/unit/IntOffsetKt;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# instance fields
.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public currentIndex:I

.field public discriminatorHolder:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public final elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

.field public final json:Lkotlinx/serialization/json/Json$Default;

.field public final lexer:Landroidx/media3/common/util/GlProgram;

.field public final mode:Lkotlinx/serialization/json/internal/WriteMode;

.field public final serializersModule:Lcom/google/mlkit/common/internal/zzc;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/media3/common/util/GlProgram;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    iget-object p2, p1, Lkotlinx/serialization/json/Json$Default;->serializersModule:Lcom/google/mlkit/common/internal/zzc;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lcom/google/mlkit/common/internal/zzc;

    const/4 p2, -0x1

    iput p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    iput-object p5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    iget-object p1, p1, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/JsonElementMarker;

    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/JsonElementMarker;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    return-void
.end method


# virtual methods
.method public final beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 9

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-static {p1, v2}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v3

    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    iget-object v0, v4, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/base/Splitter;

    iget v1, v0, Lcom/google/common/base/Splitter;->limit:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v0, Lcom/google/common/base/Splitter;->limit:I

    iget-object v6, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    array-length v7, v6

    if-ne v1, v7, :cond_0

    mul-int/lit8 v7, v1, 0x2

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v8, "copyOf(...)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v6, [I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    iget-char v0, v3, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    invoke-virtual {v4, v0}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(C)V

    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->peekNextToken()B

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v5, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne v0, v3, :cond_1

    iget-object v0, v2, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/media3/common/util/GlProgram;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;)V

    return-object v1

    :cond_2
    move-object v5, p1

    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/media3/common/util/GlProgram;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;)V

    return-object v1

    :cond_3
    const/4 p0, 0x0

    const/4 p1, 0x6

    const-string v0, "Unexpected leading comma"

    const/4 v1, 0x0

    invoke-static {v4, v0, p0, v1, p1}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public final decodeBoolean()Z
    .locals 11

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->skipWhitespaces()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "EOF"

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v0, v2, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x22

    const/4 v8, 0x1

    if-ne v2, v7, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v6

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/GlProgram;->prefetchOrEof(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_6

    const/4 v9, -0x1

    if-eq v0, v9, :cond_6

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/lit8 v0, v0, 0x20

    const/16 v10, 0x66

    if-eq v0, v10, :cond_2

    const/16 v10, 0x74

    if-ne v0, v10, :cond_1

    const-string/jumbo v0, "rue"

    invoke-virtual {p0, v9, v0}, Landroidx/media3/common/util/GlProgram;->consumeBooleanLiteral(ILjava/lang/String;)V

    move v0, v8

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected valid boolean literal prefix, but had \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6, v5, v4}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_2
    const-string v0, "alse"

    invoke-virtual {p0, v9, v0}, Landroidx/media3/common/util/GlProgram;->consumeBooleanLiteral(ILjava/lang/String;)V

    move v0, v6

    :goto_1
    if-eqz v2, :cond_5

    iget v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v2, v9, :cond_4

    iget v2, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_3

    iget v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    add-int/2addr v1, v8

    iput v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    return v0

    :cond_3
    const-string v0, "Expected closing quotation mark"

    invoke-static {p0, v0, v6, v5, v4}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_4
    invoke-static {p0, v3, v6, v5, v4}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_5
    return v0

    :cond_6
    invoke-static {p0, v3, v6, v5, v4}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5

    :cond_7
    invoke-static {p0, v3, v6, v5, v4}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v5
.end method

.method public final decodeByte()B
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeNumericLiteral()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse byte for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeChar()C
    .locals 4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected single char, but got \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v3, v2, v1}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final decodeDouble()D
    .locals 9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object p0, p0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double p0, v5, v7

    if-gtz p0, :cond_0

    return-wide v3

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->throwInvalidFloatingPointDecoded(Landroidx/media3/common/util/GlProgram;Ljava/lang/Number;)V

    throw v2

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse type \'double\' for input \'"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-static {v0, p0, v1, v2, v3}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v3, v2, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-object v4, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    iget-object v5, v4, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v5, Lcom/google/common/base/Splitter;

    iget-object v6, v4, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string v7, "descriptor"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const-string v9, "object"

    const/4 v10, 0x6

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v8, :cond_e

    const/4 v1, 0x2

    if-eq v8, v1, :cond_4

    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->tryConsumeComma()Z

    move-result v1

    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->canConsumeValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    if-eq v2, v14, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected end of the array or comma"

    invoke-static {v4, v0, v12, v15, v10}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v15

    :cond_1
    :goto_0
    add-int/lit8 v14, v2, 0x1

    iput v14, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    goto/16 :goto_e

    :cond_2
    if-nez v1, :cond_3

    goto/16 :goto_e

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "array"

    invoke-static {v4, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;)V

    throw v15

    :cond_4
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_5

    move v2, v13

    goto :goto_1

    :cond_5
    move v2, v12

    :goto_1
    if-eqz v2, :cond_6

    if-eq v1, v14, :cond_7

    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->tryConsumeComma()Z

    move-result v12

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v11}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(C)V

    :cond_7
    :goto_2
    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->canConsumeValue()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v2, :cond_b

    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    const/4 v2, 0x4

    if-ne v1, v14, :cond_9

    iget v1, v4, Landroidx/media3/common/util/GlProgram;->programId:I

    if-nez v12, :cond_8

    goto :goto_3

    :cond_8
    const-string v0, "Unexpected leading comma"

    invoke-static {v4, v0, v1, v15, v2}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v15

    :cond_9
    iget v1, v4, Landroidx/media3/common/util/GlProgram;->programId:I

    if-eqz v12, :cond_a

    goto :goto_3

    :cond_a
    const-string v0, "Expected comma after the key-value pair"

    invoke-static {v4, v0, v1, v15, v2}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v15

    :cond_b
    :goto_3
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    add-int/lit8 v14, v1, 0x1

    iput v14, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    goto/16 :goto_e

    :cond_c
    if-nez v12, :cond_d

    goto/16 :goto_e

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v9}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;)V

    throw v15

    :cond_e
    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->tryConsumeComma()Z

    move-result v8

    :goto_4
    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->canConsumeValue()Z

    move-result v16

    move/from16 v17, v13

    const/16 v13, 0x40

    const-wide/16 v18, 0x1

    iget-object v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz v16, :cond_20

    iget-object v8, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->consumeKeyString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v11}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(C)V

    invoke-static {v1, v2, v8}, Lkotlinx/serialization/json/internal/WriteModeKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x3

    if-eq v11, v12, :cond_11

    if-eqz v10, :cond_f

    iget-object v0, v10, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    if-ge v11, v13, :cond_10

    iget-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    shl-long v3, v18, v11

    or-long/2addr v1, v3

    iput-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    :cond_f
    :goto_5
    move v14, v11

    goto/16 :goto_e

    :cond_10
    ushr-int/lit8 v1, v11, 0x6

    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v2, v11, 0x3f

    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    aget-wide v3, v0, v1

    shl-long v8, v18, v2

    or-long v2, v3, v8

    aput-wide v2, v0, v1

    goto :goto_5

    :cond_11
    invoke-static {v1, v2}, Lkotlinx/serialization/json/internal/WriteModeKt;->ignoreUnknownKeys(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)Z

    move-result v10

    if-nez v10, :cond_15

    iget-object v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    if-eqz v10, :cond_12

    iget-object v11, v10, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mName:Ljava/lang/String;

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    iput-object v15, v10, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mName:Ljava/lang/String;

    goto :goto_6

    :cond_12
    iget v0, v5, Lcom/google/common/base/Splitter;->limit:I

    iget-object v1, v5, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v1, [I

    aget v2, v1, v0

    const/4 v3, -0x2

    if-ne v2, v3, :cond_13

    aput v14, v1, v0

    add-int/2addr v0, v14

    iput v0, v5, Lcom/google/common/base/Splitter;->limit:I

    :cond_13
    iget v0, v5, Lcom/google/common/base/Splitter;->limit:I

    if-eq v0, v14, :cond_14

    add-int/2addr v0, v14

    iput v0, v5, Lcom/google/common/base/Splitter;->limit:I

    :cond_14
    iget v0, v4, Landroidx/media3/common/util/GlProgram;->programId:I

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, v8}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    new-instance v1, Lkotlinx/serialization/json/internal/JsonDecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encountered an unknown key \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/common/base/Splitter;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder or \'@JsonIgnoreUnknownKeys\' annotation to ignore unknown keys.\nJSON input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->minify(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/json/internal/JsonDecodingException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_15
    :goto_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->peekNextToken()B

    move-result v8

    const/16 v12, 0x8

    const/4 v10, 0x6

    if-eq v8, v12, :cond_16

    if-eq v8, v10, :cond_16

    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->consumeStringLenient()Ljava/lang/String;

    move/from16 v13, v17

    const/16 v21, 0x0

    goto/16 :goto_b

    :cond_16
    :goto_7
    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->peekNextToken()B

    move-result v8

    move/from16 v13, v17

    if-ne v8, v13, :cond_18

    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->consumeKeyString()Ljava/lang/String;

    :cond_17
    move/from16 v17, v13

    goto :goto_7

    :cond_18
    if-eq v8, v12, :cond_19

    if-ne v8, v10, :cond_1a

    :cond_19
    const/16 v21, 0x0

    goto :goto_9

    :cond_1a
    const/16 v10, 0x9

    if-ne v8, v10, :cond_1c

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->byteValue()B

    move-result v8

    if-ne v8, v12, :cond_1b

    invoke-static {v11}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeLast(Ljava/util/AbstractList;)Ljava/lang/Object;

    :goto_8
    const/4 v10, 0x6

    const/16 v21, 0x0

    goto :goto_a

    :cond_1b
    iget v0, v4, Landroidx/media3/common/util/GlProgram;->programId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found ] instead of } at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lkotlinx/serialization/json/internal/WriteModeKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_1c
    const/4 v10, 0x7

    if-ne v8, v10, :cond_1e

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->byteValue()B

    move-result v8

    const/4 v10, 0x6

    if-ne v8, v10, :cond_1d

    invoke-static {v11}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeLast(Ljava/util/AbstractList;)Ljava/lang/Object;

    goto :goto_8

    :cond_1d
    iget v0, v4, Landroidx/media3/common/util/GlProgram;->programId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "found } instead of ] at path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lkotlinx/serialization/json/internal/WriteModeKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object v0

    throw v0

    :cond_1e
    const/16 v10, 0xa

    if-eq v8, v10, :cond_1f

    goto :goto_8

    :cond_1f
    const-string v0, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    const/4 v1, 0x0

    const/4 v10, 0x6

    invoke-static {v4, v0, v1, v15, v10}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v15

    :goto_9
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->consumeNextToken()B

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_17

    :goto_b
    invoke-virtual {v4}, Landroidx/media3/common/util/GlProgram;->tryConsumeComma()Z

    move-result v8

    move/from16 v12, v21

    const/16 v11, 0x3a

    goto/16 :goto_4

    :cond_20
    move/from16 v21, v12

    if-nez v8, :cond_27

    if-eqz v10, :cond_25

    iget-object v0, v10, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    iget-object v1, v0, Lkotlinx/serialization/internal/ElementMarker;->readIfAbsent:Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;

    iget-object v2, v0, Lkotlinx/serialization/internal/ElementMarker;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v3

    :cond_21
    iget-wide v8, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-eqz v4, :cond_22

    not-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    iget-wide v8, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    shl-long v10, v18, v4

    or-long/2addr v8, v10

    iput-wide v8, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_21

    move v14, v4

    goto :goto_e

    :cond_22
    if-le v3, v13, :cond_25

    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    array-length v3, v0

    move/from16 v12, v21

    :goto_c
    if-ge v12, v3, :cond_25

    add-int/lit8 v4, v12, 0x1

    mul-int/lit8 v6, v4, 0x40

    aget-wide v8, v0, v12

    :goto_d
    cmp-long v13, v8, v10

    if-eqz v13, :cond_24

    not-long v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shl-long v15, v18, v10

    or-long/2addr v8, v15

    add-int/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Landroidx/compose/foundation/FocusableNode$focusTargetNode$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_23

    aput-wide v8, v0, v12

    move v14, v10

    goto :goto_e

    :cond_23
    const-wide/16 v10, -0x1

    goto :goto_d

    :cond_24
    aput-wide v8, v0, v12

    move v12, v4

    const-wide/16 v10, -0x1

    goto :goto_c

    :cond_25
    :goto_e
    sget-object v0, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    if-eq v7, v0, :cond_26

    iget-object v0, v5, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, v5, Lcom/google/common/base/Splitter;->limit:I

    aput v14, v0, v1

    :cond_26
    return v14

    :cond_27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v9}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;)V

    throw v15
.end method

.method public final decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 3

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    iget-object v2, v2, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/base/Splitter;

    invoke-virtual {v2}, Lcom/google/common/base/Splitter;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-static {p1, p0, v0, v1}, Lkotlinx/serialization/json/internal/WriteModeKt;->getJsonNameIndexOrThrow(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final decodeFloat()F
    .locals 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {v0}, Landroidx/media3/common/util/GlProgram;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object p0, p0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float p0, p0, v3

    if-gtz p0, :cond_0

    return v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->throwInvalidFloatingPointDecoded(Landroidx/media3/common/util/GlProgram;Ljava/lang/Number;)V

    throw v2

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse type \'float\' for input \'"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v3, 0x6

    invoke-static {v0, p0, v1, v2, v3}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2
.end method

.method public final decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->isUnsignedNumber(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-direct {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;-><init>(Landroidx/media3/common/util/GlProgram;Lkotlinx/serialization/json/Json$Default;)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final decodeInt()I
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeNumericLiteral()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse int for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeJsonElement()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v1, v1, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-direct {v0, v1, p0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Landroidx/media3/common/util/GlProgram;)V

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/Sniffer;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public final decodeLong()J
    .locals 2

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeNumericLiteral()J

    move-result-wide v0

    return-wide v0
.end method

.method public final decodeNotNullMark()Z
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonElementMarker;->isUnmarkedNull:Z

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_6

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->skipWhitespaces()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/GlProgram;->prefetchOrEof(I)I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/util/GlProgram;->uniformByName:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-lt v3, v6, :cond_5

    const/4 v7, -0x1

    if-ne v1, v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_3

    const-string v8, "null"

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int v9, v1, v7

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v6, :cond_4

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlinx/serialization/json/internal/WriteModeKt;->charToTokenClass(C)B

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    add-int/2addr v1, v6

    iput v1, p0, Landroidx/media3/common/util/GlProgram;->programId:I

    :cond_5
    :goto_2
    if-nez v5, :cond_6

    return v4

    :cond_6
    return v0
.end method

.method public final decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    iget-object v0, v0, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/base/Splitter;

    const-string v1, "descriptor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deserializer"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v2, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x2

    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v4, [I

    iget v5, v0, Lcom/google/common/base/Splitter;->limit:I

    aget v4, v4, v5

    if-ne v4, v2, :cond_1

    iget-object v4, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sget-object v6, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    aput-object v6, v4, v5

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/IntOffsetKt;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v1, :cond_3

    iget-object p1, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p1, [I

    iget p2, v0, Lcom/google/common/base/Splitter;->limit:I

    aget p1, p1, p2

    if-eq p1, v2, :cond_2

    add-int/2addr p2, v3

    iput p2, v0, Lcom/google/common/base/Splitter;->limit:I

    iget-object p1, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length p3, p1

    if-ne p2, p3, :cond_2

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "copyOf(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    iget-object p1, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    :cond_2
    iget-object p1, v0, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iget p2, v0, Lcom/google/common/base/Splitter;->limit:I

    aput-object p0, p1, p2

    iget-object p1, v0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast p1, [I

    aput v2, p1, p2

    :cond_3
    return-object p0
.end method

.method public final decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    iget-object v2, v1, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/base/Splitter;

    const-string v3, "Expected "

    const-string v4, "deserializer"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    instance-of v5, p1, Lkotlinx/serialization/SealedClassSerializer;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, p1

    check-cast v5, Lkotlinx/serialization/SealedClassSerializer;

    invoke-virtual {v5}, Lkotlinx/serialization/SealedClassSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Landroidx/media3/common/util/GlProgram;->peekLeadingMatchingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_4

    instance-of v1, p1, Lkotlinx/serialization/SealedClassSerializer;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lkotlinx/serialization/SealedClassSerializer;

    invoke-virtual {v1}, Lkotlinx/serialization/SealedClassSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Lkotlinx/serialization/SealedClassSerializer;

    invoke-virtual {v6}, Lkotlinx/serialization/SealedClassSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v6

    invoke-interface {v6}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v6

    instance-of v8, v5, Lkotlinx/serialization/json/JsonObject;

    const/4 v9, -0x1

    if-eqz v8, :cond_2

    check-cast v5, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v5, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v3

    instance-of v6, v3, Lkotlinx/serialization/json/JsonNull;

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    :goto_0
    :try_start_1
    check-cast p1, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {p1, p0, v7}, Landroidx/compose/ui/unit/DensityKt;->findPolymorphicSerializer(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/serialization/SerializationException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v0, v1, v5, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->readPolymorphicJson(Lkotlinx/serialization/json/Json$Default;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p1, Lkotlinx/serialization/json/JsonObject;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as the serialized body of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at element: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/common/base/Splitter;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :cond_4
    :try_start_3
    check-cast p1, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {p1, p0, v6}, Landroidx/compose/ui/unit/DensityKt;->findPolymorphicSerializer(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    move-result-object p1
    :try_end_3
    .catch Lkotlinx/serialization/SerializationException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mName:Ljava/lang/String;

    iput-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    const-string v3, "."

    invoke-static {p1, v3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, ""

    invoke-static {v0, p0, v3}, Lkotlin/text/StringsKt;->substringAfter(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v1, p1, v4, p0, v0}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v7

    :cond_5
    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "at path"

    invoke-static {p1, v0, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    throw p0

    :cond_6
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/common/base/Splitter;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/MissingFieldException;->missingFields:Ljava/util/List;

    invoke-direct {p1, v1, v0, p0}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/MissingFieldException;)V

    throw p1
.end method

.method public final decodeShort()S
    .locals 5

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeNumericLiteral()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse short for input \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Landroidx/media3/common/util/GlProgram;->fail$default(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public final decodeString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p0}, Landroidx/media3/common/util/GlProgram;->consumeString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    const/4 v1, -0x1

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json$Default;

    if-nez v0, :cond_1

    invoke-static {p1, v2}, Lkotlinx/serialization/json/internal/WriteModeKt;->ignoreUnknownKeys(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    if-ne v0, v1, :cond_0

    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/media3/common/util/GlProgram;

    invoke-virtual {p1}, Landroidx/media3/common/util/GlProgram;->tryConsumeComma()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p0, p0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/GlProgram;->consumeNextToken(C)V

    iget-object p0, p1, Landroidx/media3/common/util/GlProgram;->attributes:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/base/Splitter;

    iget p1, p0, Lcom/google/common/base/Splitter;->limit:I

    iget-object v0, p0, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v0, [I

    aget v2, v0, p1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    aput v1, v0, p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    :cond_2
    iget p1, p0, Lcom/google/common/base/Splitter;->limit:I

    if-eq p1, v1, :cond_3

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/common/base/Splitter;->limit:I

    :cond_3
    return-void

    :cond_4
    iget-object p0, v2, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ""

    invoke-static {p1, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/media3/common/util/GlProgram;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getSerializersModule()Lcom/google/mlkit/common/internal/zzc;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lcom/google/mlkit/common/internal/zzc;

    return-object p0
.end method
