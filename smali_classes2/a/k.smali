.class public final La/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(F)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, La/s;->g:Ljava/text/DecimalFormat;

    .line 2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 6

    .line 4
    const-string v3, "]"

    const/16 v5, 0x10

    const-string v1, " "

    const-string v2, "["

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lc/X;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p3

    instance-of v1, v0, La/j;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, La/j;

    iget v2, v1, La/j;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, La/j;->i:I

    goto :goto_0

    :cond_0
    new-instance v1, La/j;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, La/j;-><init>(La/k;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, La/j;->g:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 5
    iget v3, v1, La/j;->i:I

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-boolean v3, v1, La/j;->f:Z

    iget-object v6, v1, La/j;->e:Ljava/util/Collection;

    iget-object v7, v1, La/j;->d:Lc/s1;

    iget-object v8, v1, La/j;->c:Ljava/util/Iterator;

    iget-object v9, v1, La/j;->b:Ljava/util/Collection;

    iget-object v10, v1, La/j;->a:Lc/X;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v17, v3

    move-object v3, v1

    move/from16 v1, v17

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    .line 6
    iget-object v3, v0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 7
    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v8, v3

    move-object v3, v1

    move/from16 v1, p2

    :goto_1
    iget-object v7, v0, Lc/X;->i:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 10
    check-cast v7, Lc/s1;

    .line 11
    iget-object v9, v7, Lc/s1;->T:Lc/D0;

    .line 12
    iput-object v0, v3, La/j;->a:Lc/X;

    iput-object v6, v3, La/j;->b:Ljava/util/Collection;

    iput-object v8, v3, La/j;->c:Ljava/util/Iterator;

    iput-object v7, v3, La/j;->d:Lc/s1;

    iput-object v6, v3, La/j;->e:Ljava/util/Collection;

    iput-boolean v1, v3, La/j;->f:Z

    iput v5, v3, La/j;->i:I

    .line 13
    invoke-virtual {v9, v5, v3}, Lc/D0;->b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_3

    return-object v2

    :cond_3
    move-object v10, v0

    move-object v0, v9

    move-object v9, v6

    .line 14
    :goto_2
    check-cast v0, Lc/G;

    .line 15
    invoke-virtual {v0}, Lc/G;->d()Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_5

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :cond_4
    new-instance v11, La/m;

    .line 18
    iget v13, v0, Lc/G;->d:I

    .line 19
    iget v14, v0, Lc/G;->e:I

    .line 20
    iget v15, v7, Lc/s1;->w:I

    .line 21
    iget v0, v10, Lc/X;->t:F

    move/from16 v16, v0

    .line 22
    invoke-direct/range {v11 .. v16}, La/m;-><init>(Ljava/io/File;IIIF)V

    .line 23
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v6, v9

    move-object v0, v10

    goto :goto_1

    .line 24
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Final image not created"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_6
    move-object v3, v6

    check-cast v3, Ljava/util/List;

    .line 26
    iget-object v1, v0, Lc/X;->r:Lc/z1;

    .line 27
    iget v2, v0, Lc/X;->t:F

    .line 28
    iget v5, v0, Lc/X;->o:I

    .line 29
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 31
    check-cast v9, La/m;

    .line 32
    new-instance v10, Lc/H;

    .line 33
    iget v11, v9, La/m;->b:I

    .line 34
    iget v12, v9, La/m;->c:I

    .line 35
    iget v9, v9, La/m;->d:I

    .line 36
    invoke-direct {v10, v11, v12, v9}, Lc/H;-><init>(III)V

    .line 37
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 38
    :cond_7
    invoke-virtual {v0, v1, v2, v5, v6}, Lc/X;->a(Lc/z1;FILjava/util/List;)Lc/v1;

    move-result-object v1

    .line 39
    sget-object v2, Lg/d0;->g:Lkotlin/SynchronizedLazyImpl;

    .line 40
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 41
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 42
    iget-object v2, v0, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 43
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 44
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 46
    check-cast v6, Lc/s1;

    .line 47
    invoke-virtual {v6}, Lc/s1;->m()Landroid/util/Size;

    move-result-object v8

    .line 48
    invoke-virtual {v6}, Lc/s1;->g()Lc/a;

    move-result-object v9

    .line 49
    const-string v10, "userCrop"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v10, Landroid/util/Size;

    iget-object v6, v6, Lc/s1;->h:Lc/G;

    .line 51
    iget v11, v6, Lc/G;->d:I

    .line 52
    iget v6, v6, Lc/G;->e:I

    .line 53
    invoke-direct {v10, v11, v6}, Landroid/util/Size;-><init>(II)V

    .line 54
    invoke-static {v9, v10}, La/l;->a(Lc/a;Landroid/util/Size;)[Landroid/graphics/PointF;

    move-result-object v6

    .line 55
    invoke-static {v8}, La/l;->a(Landroid/util/Size;)[Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v6, v8}, Lc/s1;->a([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object v6

    .line 56
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 57
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/b;

    const/4 v8, 0x0

    .line 58
    iput-object v8, v6, Lg/b;->g:Lg/c;

    goto :goto_5

    .line 59
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 61
    check-cast v6, Lg/b;

    .line 62
    new-instance v7, La/o;

    .line 63
    iget v8, v6, Lg/b;->d:I

    .line 64
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Matrix;

    invoke-direct {v7, v6, v8}, La/o;-><init>(Lg/b;Landroid/graphics/Matrix;)V

    .line 65
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    :goto_7
    move-object v8, v2

    goto :goto_8

    .line 66
    :cond_b
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_7

    .line 67
    :goto_8
    new-instance v2, La/q;

    .line 68
    iget-object v5, v0, Lc/X;->m:Lc/J;

    .line 69
    iget-boolean v7, v0, Lc/X;->l:Z

    const/4 v6, 0x0

    move-object v4, v1

    .line 70
    invoke-direct/range {v2 .. v8}, La/q;-><init>(Ljava/util/List;Lc/v1;Lc/J;ZZLjava/util/List;)V

    return-object v2
.end method
