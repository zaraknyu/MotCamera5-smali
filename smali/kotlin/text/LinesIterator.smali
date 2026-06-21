.class public final Lkotlin/text/LinesIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public delimiterLength:I

.field public delimiterStartIndex:I

.field public state:I

.field public final string:Ljava/lang/CharSequence;

.field public tokenStartIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const-string/jumbo v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 9

    iget v0, p0, Lkotlin/text/LinesIterator;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lkotlin/text/LinesIterator;->delimiterLength:I

    const/4 v3, 0x2

    if-gez v0, :cond_2

    iput v3, p0, Lkotlin/text/LinesIterator;->state:I

    return v1

    :cond_2
    iget-object v0, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v4, p0, Lkotlin/text/LinesIterator;->tokenStartIndex:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_5

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    const/16 v8, 0xa

    if-eq v6, v8, :cond_3

    if-eq v6, v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ne v6, v7, :cond_4

    add-int/lit8 v1, v4, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_4

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    move v1, v4

    goto :goto_2

    :cond_5
    const/4 v3, -0x1

    :goto_2
    iput v2, p0, Lkotlin/text/LinesIterator;->state:I

    iput v3, p0, Lkotlin/text/LinesIterator;->delimiterLength:I

    iput v1, p0, Lkotlin/text/LinesIterator;->delimiterStartIndex:I

    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lkotlin/text/LinesIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/text/LinesIterator;->state:I

    iget v0, p0, Lkotlin/text/LinesIterator;->delimiterStartIndex:I

    iget v1, p0, Lkotlin/text/LinesIterator;->tokenStartIndex:I

    iget v2, p0, Lkotlin/text/LinesIterator;->delimiterLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lkotlin/text/LinesIterator;->tokenStartIndex:I

    iget-object p0, p0, Lkotlin/text/LinesIterator;->string:Ljava/lang/CharSequence;

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
