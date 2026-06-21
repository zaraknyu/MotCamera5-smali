.class public abstract Landroidx/collection/ArraySetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DELETED:Ljava/lang/Object;

.field public static final DELETED$1:Ljava/lang/Object;

.field public static final EmptyNodes:[J


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/ArraySetKt;->DELETED:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Landroidx/collection/ArraySetKt;->EmptyNodes:[J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/ArraySetKt;->DELETED$1:Ljava/lang/Object;

    return-void
.end method

.method public static final indexOf(Landroidx/collection/ArraySet;Ljava/lang/Object;I)I
    .locals 4

    iget v0, p0, Landroidx/collection/ArraySet;->_size:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/collection/ArraySet;->hashes:[I

    invoke-static {v0, p2, v1}, Landroidx/collection/internal/RuntimeHelpersKt;->binarySearch(II[I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroidx/collection/ArraySet;->hashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    iget-object v3, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroidx/collection/ArraySet;->hashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    iget-object v0, p0, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    not-int p0, v2

    return p0

    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
