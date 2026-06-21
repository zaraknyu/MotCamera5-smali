.class public abstract Lkotlin/sequences/SequencesKt;
.super Lkotlin/sequences/SequencesKt__SequencesJVMKt;


# direct methods
.method public static count(Lkotlin/sequences/Sequence;)I
    .locals 2

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwCountOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return v0
.end method

.method public static final flatten(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FlatteningSequence;
    .locals 4

    new-instance v0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    instance-of v1, p0, Lkotlin/sequences/TransformingSequence;

    if-eqz v1, :cond_0

    check-cast p0, Lkotlin/sequences/TransformingSequence;

    new-instance v1, Lkotlin/sequences/FlatteningSequence;

    iget-object v2, p0, Lkotlin/sequences/TransformingSequence;->sequence:Lkotlin/sequences/Sequence;

    iget-object p0, p0, Lkotlin/sequences/TransformingSequence;->transformer:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v2, p0, v0}, Lkotlin/sequences/FlatteningSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v1

    :cond_0
    new-instance v1, Lkotlin/sequences/FlatteningSequence;

    new-instance v2, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v1, p0, v2, v0}, Lkotlin/sequences/FlatteningSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method

.method public static generateSequence(Lkotlin/jvm/functions/Function0;)Lkotlin/sequences/Sequence;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/io/FileTreeWalk;

    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-direct {v0, p0, v1}, Lkotlin/io/FileTreeWalk;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 2
    new-instance p0, Lkotlin/sequences/ConstrainedOnceSequence;

    invoke-direct {p0, v0}, Lkotlin/sequences/ConstrainedOnceSequence;-><init>(Lkotlin/sequences/Sequence;)V

    return-object p0
.end method

.method public static generateSequence(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 3

    if-nez p1, :cond_0

    .line 3
    sget-object p0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lkotlin/io/FileTreeWalk;

    new-instance v1, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lkotlin/collections/ArraysKt___ArraysKt$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, p0}, Lkotlin/io/FileTreeWalk;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;
    .locals 1

    const-string/jumbo v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v0, p0, p1}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;
    .locals 2

    new-instance v0, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v0, p0, p1}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    const/16 p1, 0x1d

    invoke-direct {p0, p1}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance p1, Lkotlin/sequences/FilteringSequence;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    return-object p1
.end method

.method public static toList(Lkotlin/sequences/Sequence;)Ljava/util/List;
    .locals 2

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
