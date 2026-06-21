.class public final Lkotlinx/serialization/json/internal/StreamingJsonEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final composer:Lcom/motorola/camera/ui/DownUpDetector;

.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public forceQuoting:Z

.field public final json:Lkotlinx/serialization/json/Json$Default;

.field public final mode:Lkotlinx/serialization/json/internal/WriteMode;

.field public final modeReuseCache:[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

.field public polymorphicDiscriminator:Ljava/lang/String;

.field public polymorphicSerialName:Ljava/lang/String;

.field public final serializersModule:Lcom/google/mlkit/common/internal/zzc;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/DownUpDetector;Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json$Default;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->modeReuseCache:[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    iget-object p1, p2, Lkotlinx/serialization/json/Json$Default;->serializersModule:Lcom/google/mlkit/common/internal/zzc;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->serializersModule:Lcom/google/mlkit/common/internal/zzc;

    iget-object p1, p2, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_1

    aget-object p2, p4, p1

    if-nez p2, :cond_0

    if-eq p2, p0, :cond_1

    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method


# virtual methods
.method public final beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/StreamingJsonEncoder;
    .locals 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v1

    iget-char v2, v1, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/DownUpDetector;->print(C)V

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicDiscriminator:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicSerialName:Ljava/lang/String;

    if-nez v4, :cond_0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v3}, Lcom/motorola/camera/ui/DownUpDetector;->nextItem()V

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    const/16 p1, 0x3a

    invoke-virtual {v3, p1}, Lcom/motorola/camera/ui/DownUpDetector;->print(C)V

    invoke-virtual {p0, v4}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicDiscriminator:Ljava/lang/String;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicSerialName:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne p1, v1, :cond_2

    return-object p0

    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->modeReuseCache:[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p0, p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    invoke-direct {p1, v3, v0, v1, p0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lcom/motorola/camera/ui/DownUpDetector;Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    return-object p1
.end method

.method public final encodeBoolean(Z)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    iget-object p0, p0, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeByte(B)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->print(B)V

    return-void
.end method

.method public final encodeChar(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeDouble(D)V
    .locals 6

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/extractor/mkv/Sniffer;->write(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-object p1, v1, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-virtual {p1}, Landroidx/media3/extractor/mkv/Sniffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->InvalidFloatingPointEncoded(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public final encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x2c

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/16 v4, 0x3a

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    iget-boolean v0, v2, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/DownUpDetector;->print(C)V

    :cond_0
    invoke-virtual {v2}, Lcom/motorola/camera/ui/DownUpDetector;->nextItem()V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json$Default;

    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/DownUpDetector;->print(C)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/DownUpDetector;->space()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    :cond_2
    if-ne p2, v3, :cond_3

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/DownUpDetector;->print(C)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/DownUpDetector;->space()V

    iput-boolean v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    :cond_3
    return-void

    :cond_4
    iget-boolean p1, v2, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-nez p1, :cond_6

    rem-int/2addr p2, v6

    if-nez p2, :cond_5

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/DownUpDetector;->print(C)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/DownUpDetector;->nextItem()V

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v4}, Lcom/motorola/camera/ui/DownUpDetector;->print(C)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/DownUpDetector;->space()V

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    return-void

    :cond_6
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    invoke-virtual {v2}, Lcom/motorola/camera/ui/DownUpDetector;->nextItem()V

    return-void

    :cond_7
    iget-boolean p0, v2, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    if-nez p0, :cond_8

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/DownUpDetector;->print(C)V

    :cond_8
    invoke-virtual {v2}, Lcom/motorola/camera/ui/DownUpDetector;->nextItem()V

    return-void
.end method

.method public final encodeFloat(F)V
    .locals 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/extractor/mkv/Sniffer;->write(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget-object p1, v1, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-virtual {p1}, Landroidx/media3/extractor/mkv/Sniffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->InvalidFloatingPointEncoded(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public final encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/StreamingJsonEncoder;
    .locals 5

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->isUnsignedNumber(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    if-eqz v0, :cond_1

    instance-of p1, v4, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v4, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/extractor/mkv/Sniffer;

    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    new-instance v4, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;

    invoke-direct {v4, p1, p0}, Lkotlinx/serialization/json/internal/ComposerForUnsignedNumbers;-><init>(Landroidx/media3/extractor/mkv/Sniffer;Z)V

    :goto_0
    new-instance p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    invoke-direct {p0, v4, v3, v2, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lcom/motorola/camera/ui/DownUpDetector;Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    return-object p0

    :cond_1
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isInline()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/serialization/json/JsonElementKt;->jsonUnquotedLiteralDescriptor:Lkotlinx/serialization/internal/InlineClassDescriptor;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of p1, v4, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, v4, Lcom/motorola/camera/ui/DownUpDetector;->mListener:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/extractor/mkv/Sniffer;

    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    new-instance v4, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;

    invoke-direct {v4, p1, p0}, Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;-><init>(Landroidx/media3/extractor/mkv/Sniffer;Z)V

    :goto_1
    new-instance p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    invoke-direct {p0, v4, v3, v2, v1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;-><init>(Lcom/motorola/camera/ui/DownUpDetector;Lkotlinx/serialization/json/Json$Default;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/internal/StreamingJsonEncoder;)V

    return-object p0

    :cond_3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicDiscriminator:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicSerialName:Ljava/lang/String;

    :cond_4
    return-object p0
.end method

.method public final encodeInlineElement(Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;I)Lkotlinx/serialization/json/internal/StreamingJsonEncoder;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p1, p2}, Lkotlinx/serialization/internal/ListLikeDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/StreamingJsonEncoder;

    move-result-object p0

    return-object p0
.end method

.method public final encodeInt(I)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->print(I)V

    return-void
.end method

.method public final encodeLong(J)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/DownUpDetector;->print(J)V

    return-void
.end method

.method public final encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeLong(J)V

    return-void
.end method

.method public final encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeSerializableValue(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V
    .locals 4

    const-string/jumbo v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->json:Lkotlinx/serialization/json/Json$Default;

    iget-object v1, v0, Lkotlinx/serialization/json/Json$Default;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p1, Lkotlinx/serialization/SealedClassSerializer;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Ljava/lang/Object;

    check-cast v1, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    sget-object v3, Lkotlinx/serialization/json/ClassDiscriminatorMode;->NONE:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    if-eq v1, v3, :cond_4

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminatorMode:Ljava/lang/Object;

    check-cast v1, Lkotlinx/serialization/json/ClassDiscriminatorMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Landroidx/compose/ui/unit/DpSize;

    move-result-object v1

    sget-object v3, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$1:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$3:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :goto_0
    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json$Default;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v2, :cond_c

    check-cast p1, Lkotlinx/serialization/SealedClassSerializer;

    if-eqz p2, :cond_b

    invoke-static {p1, p0, p2}, Landroidx/compose/ui/unit/DensityKt;->findPolymorphicSerializer(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    if-eqz v0, :cond_a

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    const-string v3, "<this>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlinx/serialization/internal/Platform_commonKt;->cachedSerialNames(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_3
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Landroidx/compose/ui/unit/DpSize;

    move-result-object p1

    const-string v2, "kind"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, p1, Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    if-nez v2, :cond_8

    instance-of v2, p1, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez v2, :cond_7

    instance-of p1, p1, Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Actual serializer for polymorphic cannot be polymorphic itself"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-virtual {p1}, Lkotlinx/serialization/SealedClassSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v1, "\' cannot be serialized as base class \'"

    const-string v2, "\' because it has property name that conflicts with JSON class discriminator \'"

    const-string v3, "Sealed class \'"

    invoke-static {v3, p1, v1, p0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    :goto_4
    move-object p1, v1

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Value for serializer "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlinx/serialization/SealedClassSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " should always be non-null. Please report issue to the kotlinx.serialization tracker."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    if-eqz v0, :cond_d

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v1

    iput-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicDiscriminator:Ljava/lang/String;

    iput-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->polymorphicSerialName:Ljava/lang/String;

    :cond_d
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/json/internal/StreamingJsonEncoder;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeShort(S)V
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->print(S)V

    return-void
.end method

.method public final encodeString(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/DownUpDetector;->printQuoted(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public final endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->composer:Lcom/motorola/camera/ui/DownUpDetector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/motorola/camera/ui/DownUpDetector;->mStillDown:Z

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p0, p0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/DownUpDetector;->print(C)V

    return-void
.end method

.method public final shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonEncoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method
