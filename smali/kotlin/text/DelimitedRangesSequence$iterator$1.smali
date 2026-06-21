.class public final Lkotlin/text/DelimitedRangesSequence$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public currentStartIndex:I

.field public nextItem:Lkotlin/ranges/IntRange;

.field public nextSearchIndex:I

.field public nextState:I

.field public final synthetic this$0:Lkotlin/io/FileTreeWalk;


# direct methods
.method public constructor <init>(Lkotlin/io/FileTreeWalk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/io/FileTreeWalk;

    const/4 v0, -0x1

    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    iget-object p1, p1, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    return-void
.end method


# virtual methods
.method public final calcNext$3()V
    .locals 7

    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lkotlin/io/FileTreeWalk;

    iget-object v1, v0, Lkotlin/io/FileTreeWalk;->start:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iput v3, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-le v2, v4, :cond_1

    new-instance v0, Lkotlin/ranges/IntRange;

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    invoke-static {v1}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Lkotlin/ranges/IntProgression;-><init>(III)V

    iput-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    iput v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lkotlin/io/FileTreeWalk;->direction:Ljava/lang/Object;

    check-cast v0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_2

    new-instance v0, Lkotlin/ranges/IntRange;

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    invoke-static {v1}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1, v6}, Lkotlin/ranges/IntProgression;-><init>(III)V

    iput-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    iput v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    iput-object v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    if-nez v0, :cond_3

    move v3, v6

    :cond_3
    add-int/2addr v1, v3

    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    :goto_0
    iput v6, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->calcNext$3()V

    :cond_0
    iget p0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->calcNext$3()V

    :cond_0
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lkotlin/ranges/IntRange;

    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    return-object v0

    :cond_1
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
