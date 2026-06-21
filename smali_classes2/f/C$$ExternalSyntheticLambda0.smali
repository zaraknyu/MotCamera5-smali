.class public final synthetic Lf/C$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lf/C;


# direct methods
.method public synthetic constructor <init>(Lf/C;I)V
    .locals 0

    iput p2, p0, Lf/C$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lf/C$$ExternalSyntheticLambda0;->f$0:Lf/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lf/C$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf/C$$ExternalSyntheticLambda0;->f$0:Lf/C;

    iget-object p0, p0, Lf/C;->a:Lf/x;

    iget-object p0, p0, Lf/x;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0xa

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v8, v4, 0x1

    if-ltz v4, :cond_2

    check-cast v5, Lc/X;

    iget-object v9, v5, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    aput v9, v0, v4

    iget-object v5, v5, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v7, 0x1

    if-ltz v7, :cond_0

    check-cast v10, Lc/s1;

    new-instance v12, Lf/E;

    new-instance v13, Lf/D;

    invoke-direct {v13, v4, v7}, Lf/D;-><init>(II)V

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/X;

    iget v7, v7, Lc/X;->a:I

    iget v10, v10, Lc/s1;->f:I

    sget-object v14, Lf/F;->a:Lf/F;

    invoke-direct {v12, v13, v7, v10, v14}, Lf/E;-><init>(Lf/D;IILe/W;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v11

    goto :goto_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v6

    :cond_1
    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    move v4, v8

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v6

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_4

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v3, 0x1

    if-ltz v3, :cond_7

    check-cast v5, Lf/E;

    iget-object v3, v5, Lf/E;->a:Lf/D;

    iget v8, v3, Lf/D;->a:I

    aget v9, v0, v8

    add-int/2addr v8, v4

    if-le v9, v4, :cond_6

    iget v3, v3, Lf/D;->b:I

    if-nez v3, :cond_5

    new-instance v3, Lf/H;

    invoke-direct {v3, v8}, Lf/H;-><init>(I)V

    invoke-static {v5, v3}, Lf/E;->a(Lf/E;Le/W;)Lf/E;

    move-result-object v3

    goto :goto_3

    :cond_5
    new-instance v3, Lf/G;

    invoke-direct {v3, v8}, Lf/G;-><init>(I)V

    invoke-static {v5, v3}, Lf/E;->a(Lf/E;Le/W;)Lf/E;

    move-result-object v3

    goto :goto_3

    :cond_6
    new-instance v3, Lf/I;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v3, v8, v9}, Lf/I;-><init>(II)V

    invoke-static {v5, v3}, Lf/E;->a(Lf/E;Le/W;)Lf/E;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v7

    goto :goto_2

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v6

    :cond_8
    move-object v1, v2

    :goto_4
    return-object v1

    :pswitch_0
    iget-object p0, p0, Lf/C$$ExternalSyntheticLambda0;->f$0:Lf/C;

    iget-object v0, p0, Lf/C;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object p0, p0, Lf/C;->a:Lf/x;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    sget-object v2, Lf/F;->a:Lf/F;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_b

    iget-object p0, p0, Lf/x;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {p0, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v6, v4

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_a

    check-cast v7, Lc/X;

    if-le v0, v5, :cond_9

    new-instance v9, Lf/I;

    invoke-direct {v9, v8, v0}, Lf/I;-><init>(II)V

    goto :goto_6

    :cond_9
    move-object v9, v2

    :goto_6
    new-instance v10, Lf/E;

    new-instance v11, Lf/D;

    invoke-direct {v11, v6, v4}, Lf/D;-><init>(II)V

    iget v6, v7, Lc/X;->a:I

    iget-object v7, v7, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/s1;

    iget v7, v7, Lc/s1;->f:I

    invoke-direct {v10, v11, v6, v7, v9}, Lf/E;-><init>(Lf/D;IILe/W;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v8

    goto :goto_5

    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v3

    :cond_b
    iget-object p0, p0, Lf/x;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v7, v4

    move v8, v5

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    if-ltz v7, :cond_f

    check-cast v9, Lc/X;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    move-object v12, v3

    goto :goto_9

    :cond_c
    if-le v1, v5, :cond_d

    new-instance v11, Lf/I;

    add-int/lit8 v12, v8, 0x1

    invoke-direct {v11, v8, v1}, Lf/I;-><init>(II)V

    move v8, v12

    goto :goto_8

    :cond_d
    move-object v11, v2

    :goto_8
    new-instance v12, Lf/E;

    new-instance v13, Lf/D;

    invoke-direct {v13, v7, v4}, Lf/D;-><init>(II)V

    iget v7, v9, Lc/X;->a:I

    iget-object v9, v9, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/s1;

    iget v9, v9, Lc/s1;->f:I

    invoke-direct {v12, v13, v7, v9, v11}, Lf/E;-><init>(Lf/D;IILe/W;)V

    :goto_9
    if-eqz v12, :cond_e

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    move v7, v10

    goto :goto_7

    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v3

    :cond_10
    move-object v1, v6

    :cond_11
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
