.class public abstract Lkotlin/text/HexExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BYTE_TO_LOWER_CASE_HEX_DIGITS:[I

.field public static final HEX_DIGITS_TO_LONG_DECIMAL:[J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "0123456789abcdef"

    if-ge v3, v0, :cond_0

    shr-int/lit8 v5, v3, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    and-int/lit8 v6, v3, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lkotlin/text/HexExtensionsKt;->BYTE_TO_LOWER_CASE_HEX_DIGITS:[I

    new-array v1, v0, [I

    move v3, v2

    :goto_1
    const-string v5, "0123456789ABCDEF"

    if-ge v3, v0, :cond_1

    shr-int/lit8 v6, v3, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    and-int/lit8 v7, v3, 0xf

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v0, [I

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_2

    const/4 v6, -0x1

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    move v6, v3

    :goto_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_3

    :cond_3
    move v3, v2

    move v6, v3

    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_4

    :cond_4
    new-array v1, v0, [J

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_5

    const-wide/16 v6, -0x1

    aput-wide v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    move v0, v2

    move v3, v0

    :goto_6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v3, 0x1

    int-to-long v8, v3

    aput-wide v8, v1, v6

    add-int/lit8 v0, v0, 0x1

    move v3, v7

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, 0x1

    int-to-long v6, v0

    aput-wide v6, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_7

    :cond_7
    sput-object v1, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    return-void
.end method

.method public static final checkNumberOfDigits(IILjava/lang/String;)V
    .locals 3

    sub-int v0, p1, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/16 p1, 0x10

    if-le v0, p1, :cond_1

    add-int/2addr v0, p0

    sub-int/2addr v0, p1

    :goto_0
    if-ge p0, v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x30

    if-ne p1, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Expected the hexadecimal digit \'0\' at index "

    const-string v1, ", but was \'"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'.\nThe result won\'t fit the type being parsed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "substring(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected at least 1 hexadecimal digits at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", but was \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" of length "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static hexToLong$default(IILjava/lang/String;)J
    .locals 4

    sget-object v0, Lkotlin/text/HexFormat;->Default:Lkotlin/text/HexFormat;

    const-string v1, "format"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "startIndex: "

    if-ltz p0, :cond_3

    if-gt p1, v1, :cond_3

    if-gt p0, p1, :cond_2

    iget-object v0, v0, Lkotlin/text/HexFormat;->number:Lkotlin/text/HexFormat$NumberHexFormat;

    iget-boolean v0, v0, Lkotlin/text/HexFormat$NumberHexFormat;->isDigitsOnly:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lkotlin/text/HexExtensionsKt;->checkNumberOfDigits(IILjava/lang/String;)V

    invoke-static {p0, p1, p2}, Lkotlin/text/HexExtensionsKt;->parseLong(IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sub-int v0, p1, p0

    if-lez v0, :cond_1

    invoke-static {p0, p1, p2}, Lkotlin/text/HexExtensionsKt;->checkNumberOfDigits(IILjava/lang/String;)V

    invoke-static {p0, p1, p2}, Lkotlin/text/HexExtensionsKt;->parseLong(IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Expected a hexadecimal number with prefix \"\" and suffix \"\", but was "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, " > endIndex: "

    invoke-static {v2, p0, p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, ", endIndex: "

    const-string v3, ", size: "

    invoke-static {p0, p1, v2, v0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final parseLong(IILjava/lang/String;)J
    .locals 7

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    if-ge p0, p1, :cond_1

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    ushr-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_0

    sget-object v5, Lkotlin/text/HexExtensionsKt;->HEX_DIGITS_TO_LONG_DECIMAL:[J

    aget-wide v4, v5, v4

    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    or-long/2addr v2, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Expected a hexadecimal digit at index "

    const-string v1, ", but was "

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide v2
.end method
