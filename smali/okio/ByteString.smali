.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final EMPTY:Lokio/ByteString;

.field public static final HEX_DIGITS:[C


# instance fields
.field public final data:[B

.field public transient hashCode:I

.field public transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokio/ByteString;->HEX_DIGITS:[C

    const/4 v0, 0x0

    new-array v0, v0, [B

    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    sput-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/ByteString;->data:[B

    return-void
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    new-instance v0, Lokio/ByteString;

    sget-object v1, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge v5, v6, :cond_3

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    return v3

    :cond_2
    if-ge v0, v1, :cond_3

    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lokio/ByteString;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v3, p0

    if-ne v1, v3, :cond_1

    array-length v1, p0

    invoke-virtual {p1, p0, v2, v2, v1}, Lokio/ByteString;->rangeEquals([BIII)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getByte(I)B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lokio/ByteString;->hashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lokio/ByteString;->hashCode:I

    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 8

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    sget-object v7, Lokio/ByteString;->HEX_DIGITS:[C

    aget-char v6, v7, v6

    aput-char v6, v0, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v7, v4

    aput-char v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public internalArray()[B
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    return-object p0
.end method

.method public rangeEquals(Lokio/ByteString;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iget-object p0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, p0, v0, v0, p2}, Lokio/ByteString;->rangeEquals([BIII)Z

    move-result p0

    return p0
.end method

.method public rangeEquals([BIII)Z
    .locals 4

    const/4 v0, 0x0

    if-ltz p2, :cond_2

    .line 2
    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p2, v1, :cond_2

    if-ltz p3, :cond_2

    array-length v1, p1

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_2

    .line 3
    sget-object v1, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, v1, p2

    .line 4
    aget-byte v2, p0, v2

    add-int v3, v1, p3

    aget-byte v3, p1, v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lokio/ByteString;->data:[B

    array-length p0, p0

    return p0
.end method

.method public substring()Lokio/ByteString;
    .locals 3

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v1, v0

    const/16 v2, 0x40

    if-gt v2, v1, :cond_1

    array-length v1, v0

    if-ne v2, v1, :cond_0

    return-object p0

    :cond_0
    new-array p0, v2, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lokio/ByteString;

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex > length("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    const-string v2, ")"

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v1, v0

    if-nez v1, :cond_0

    const-string p0, "[size=0]"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, -0x1

    const/16 v7, 0x40

    if-ge v4, v2, :cond_5

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0xa

    if-eq v8, v9, :cond_2

    const/16 v9, 0xd

    if-ne v8, v9, :cond_3

    :cond_2
    const v9, 0xfffd

    if-ne v8, v9, :cond_4

    :cond_3
    move v4, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    const-string/jumbo v2, "\u2026]"

    const-string v5, "[size="

    const-string v8, "]"

    if-ne v4, v6, :cond_7

    array-length v1, v0

    if-gt v1, v7, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[hex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hex="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/ByteString;->substring()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v3, "\\"

    const-string v6, "\\\\"

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "\n"

    const-string v6, "\\n"

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "\r"

    const-string v6, "\\r"

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " text="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string v0, "[text="

    invoke-static {v0, p0, v8}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public utf8()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lokio/ByteString;->data:[B

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-object v0
.end method
