.class public abstract Lkotlin/reflect/jvm/internal/impl/utils/DFS;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NULL_VALUE:Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->NULL_VALUE:Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$1;

    return-void
.end method

.method public static final addIfNotNull(Ljava/util/AbstractCollection;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final compact(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    return-object p0

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public static create()Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;-><init>(I)V

    return-object v0
.end method

.method public static dfs(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lkotlin/reflect/jvm/internal/impl/utils/DFS;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/android/gms/tasks/zzb;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/zzb;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lcom/google/android/gms/tasks/zzb;Lkotlin/reflect/jvm/internal/impl/utils/DFS;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->result()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lcom/google/android/gms/tasks/zzb;Lkotlin/reflect/jvm/internal/impl/utils/DFS;)V
    .locals 2

    if-eqz p0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->beforeChildren(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;->getNeighbors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->doDfs(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lcom/google/android/gms/tasks/zzb;Lkotlin/reflect/jvm/internal/impl/utils/DFS;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->afterChildren(Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/16 p1, 0x16

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p3, "nodes"

    aput-object p3, p0, p2

    goto :goto_2

    :pswitch_1
    const-string p3, "current"

    aput-object p3, p0, p2

    goto :goto_2

    :pswitch_2
    const-string p3, "node"

    aput-object p3, p0, p2

    goto :goto_2

    :pswitch_3
    const-string/jumbo p3, "predicate"

    aput-object p3, p0, p2

    goto :goto_2

    :pswitch_4
    const-string p3, "handler"

    aput-object p3, p0, p2

    goto :goto_2

    :pswitch_5
    const-string/jumbo p3, "visited"

    aput-object p3, p0, p2

    goto :goto_2

    :pswitch_6
    const-string p3, "neighbors"

    aput-object p3, p0, p2

    :goto_2
    const/4 p2, 0x1

    const-string p3, "kotlin/reflect/jvm/internal/impl/utils/DFS"

    aput-object p3, p0, p2

    const/4 p2, 0x2

    packed-switch p1, :pswitch_data_1

    const-string p1, "dfs"

    aput-object p1, p0, p2

    goto :goto_3

    :pswitch_7
    const-string p1, "doDfs"

    aput-object p1, p0, p2

    goto :goto_3

    :pswitch_8
    const-string/jumbo p1, "topologicalOrder"

    aput-object p1, p0, p2

    goto :goto_3

    :pswitch_9
    const-string p1, "dfsFromNode"

    aput-object p1, p0, p2

    goto :goto_3

    :pswitch_a
    const-string p1, "ifAny"

    aput-object p1, p0, p2

    :goto_3
    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static ifAny(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Z

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, v2}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    invoke-static {p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->dfs(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lkotlin/reflect/jvm/internal/impl/utils/DFS;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final isProcessCanceledException(Ljava/lang/Throwable;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intellij.openapi.progress.ProcessCanceledException"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public static unescapeThrowable(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/utils/WrappedValues$ThrowableWrapper;->throwable:Ljava/lang/Throwable;

    throw p0
.end method


# virtual methods
.method public afterChildren(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract beforeChildren(Ljava/lang/Object;)Z
.end method

.method public abstract result()Ljava/lang/Object;
.end method
