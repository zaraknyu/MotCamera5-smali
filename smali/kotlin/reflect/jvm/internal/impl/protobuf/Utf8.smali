.class public abstract Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ITERABLE:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;

.field public static final ITERATOR:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->ITERATOR:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$1;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->ITERABLE:Lkotlin/reflect/jvm/internal/impl/protobuf/SmallSortedMap$EmptySet$2;

    return-void
.end method

.method public static incompleteStateFor(II)I
    .locals 1

    .line 1
    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static incompleteStateFor(II[B)I
    .locals 5

    add-int/lit8 v0, p0, -0x1

    .line 2
    aget-byte v0, p2, v0

    sub-int/2addr p1, p0

    const/4 v1, -0x1

    const/16 v2, -0xc

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 3
    aget-byte p1, p2, p0

    add-int/2addr p0, v3

    aget-byte p0, p2, p0

    if-gt v0, v2, :cond_1

    const/16 p2, -0x41

    if-gt p1, p2, :cond_1

    if-le p0, p2, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    return v1

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 5
    :cond_3
    aget-byte p0, p2, p0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    :cond_4
    if-le v0, v2, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public static partialIsValidUtf8(II[B)I
    .locals 7

    :goto_0
    if-ge p0, p1, :cond_0

    aget-byte v0, p2, p0

    if-ltz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-lt p0, p1, :cond_1

    return v0

    :cond_1
    :goto_1
    if-lt p0, p1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, p0, 0x1

    aget-byte v2, p2, p0

    if-gez v2, :cond_b

    const/16 v3, -0x20

    const/16 v4, -0x41

    if-ge v2, v3, :cond_4

    if-lt v1, p1, :cond_3

    return v2

    :cond_3
    const/16 v3, -0x3e

    if-lt v2, v3, :cond_a

    add-int/lit8 p0, p0, 0x2

    aget-byte v1, p2, v1

    if-le v1, v4, :cond_1

    goto :goto_2

    :cond_4
    const/16 v5, -0x10

    if-ge v2, v5, :cond_8

    add-int/lit8 v5, p1, -0x1

    if-lt v1, v5, :cond_5

    invoke-static {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(II[B)I

    move-result p0

    return p0

    :cond_5
    add-int/lit8 v5, p0, 0x2

    aget-byte v1, p2, v1

    if-gt v1, v4, :cond_a

    const/16 v6, -0x60

    if-ne v2, v3, :cond_6

    if-lt v1, v6, :cond_a

    :cond_6
    const/16 v3, -0x13

    if-ne v2, v3, :cond_7

    if-ge v1, v6, :cond_a

    :cond_7
    add-int/lit8 p0, p0, 0x3

    aget-byte v1, p2, v5

    if-le v1, v4, :cond_1

    goto :goto_2

    :cond_8
    add-int/lit8 v3, p1, -0x2

    if-lt v1, v3, :cond_9

    invoke-static {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/Utf8;->incompleteStateFor(II[B)I

    move-result p0

    return p0

    :cond_9
    add-int/lit8 v3, p0, 0x2

    aget-byte v1, p2, v1

    if-gt v1, v4, :cond_a

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_a

    add-int/lit8 v1, p0, 0x3

    aget-byte v2, p2, v3

    if-gt v2, v4, :cond_a

    add-int/lit8 p0, p0, 0x4

    aget-byte v1, p2, v1

    if-le v1, v4, :cond_1

    :cond_a
    :goto_2
    const/4 p0, -0x1

    return p0

    :cond_b
    move p0, v1

    goto :goto_1
.end method
