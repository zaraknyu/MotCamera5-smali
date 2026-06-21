.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;


# instance fields
.field public final debugName:Ljava/lang/String;

.field public final providers:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    const-string v0, "debugName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;->providers:Ljava/util/List;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;->debugName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    return-void
.end method


# virtual methods
.method public final collectPackageFragments(Lkotlin/reflect/jvm/internal/impl/name/FqName;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;->providers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->collectPackageFragmentsOptimizedIfPossible(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;Lkotlin/reflect/jvm/internal/impl/name/FqName;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getSubPackagesOf(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;->providers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    invoke-interface {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;->getSubPackagesOf(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final isEmpty(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;->providers:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;

    invoke-static {v1, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->isEmpty(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentProviderOptimized;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/CompositePackageFragmentProvider;->debugName:Ljava/lang/String;

    return-object p0
.end method
