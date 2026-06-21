.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Landroidx/work/WorkQuery;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/WorkQuery;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$$Lambda$0;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$$Lambda$0;->arg$0:Landroidx/work/WorkQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$$Lambda$0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$ClassRequest;

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$ClassRequest;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$ClassRequest;->typeParametersCount:Ljava/util/List;

    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isLocal:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getOuterClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$$Lambda$0;->arg$0:Landroidx/work/WorkQuery;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/work/WorkQuery;->getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->packageFqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassOrPackageFragmentDescriptor;

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isNestedClass()Z

    move-result v6

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$MockClassDescriptor;

    iget-object p0, p0, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getShortClassName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_2
    move v7, p0

    goto :goto_3

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :goto_3
    invoke-direct/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$MockClassDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassOrPackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/name/Name;ZI)V

    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unresolved local class: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EmptyPackageFragmentDescriptor;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses$$Lambda$0;->arg$0:Landroidx/work/WorkQuery;

    iget-object p0, p0, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EmptyPackageFragmentDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/FqName;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
