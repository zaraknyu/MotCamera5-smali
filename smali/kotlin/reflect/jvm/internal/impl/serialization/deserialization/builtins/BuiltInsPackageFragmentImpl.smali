.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;


# instance fields
.field public _memberScope:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPackageMemberScope;

.field public _proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;

.field public final classDataFinder:Landroidx/work/WorkQuery;

.field public final metadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

.field public final nameResolver:Lkotlinx/coroutines/selects/SelectClause1Impl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;)V
    .locals 2

    const-string p2, "fqName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "module"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/FqName;)V

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->metadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    new-instance p1, Lkotlinx/coroutines/selects/SelectClause1Impl;

    iget-object p2, p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;->strings_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;

    const-string p3, "getStrings(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;->qualifiedNames_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$QualifiedNameTable;

    const-string v0, "getQualifiedNames(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lkotlinx/coroutines/selects/SelectClause1Impl;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$StringTable;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$QualifiedNameTable;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->nameResolver:Lkotlinx/coroutines/selects/SelectClause1Impl;

    new-instance p2, Landroidx/work/WorkQuery;

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$4;

    invoke-direct {p3, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$4;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;)V

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p1, p2, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    iput-object p5, p2, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    iput-object p3, p2, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    iget-object p1, p4, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;->class__:Ljava/util/List;

    const-string p3, "getClass_List(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-static {p3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result p3

    const/16 p5, 0x10

    if-ge p3, p5, :cond_0

    move p3, p5

    :cond_0
    new-instance p5, Ljava/util/LinkedHashMap;

    invoke-direct {p5, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    iget-object v1, p2, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/selects/SelectClause1Impl;

    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->fqName_:I

    invoke-static {v1, v0}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    invoke-interface {p5, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object p5, p2, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->classDataFinder:Landroidx/work/WorkQuery;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->_proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;

    return-void
.end method


# virtual methods
.method public final getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->_memberScope:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPackageMemberScope;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "_memberScope"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final initialize(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;)V
    .locals 11

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->_proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->_proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPackageMemberScope;

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$PackageFragment;->package_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;

    const-string v0, "getPackage(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scope of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;

    const/16 v0, 0x17

    invoke-direct {v10, v0, p0}, Lkotlin/reflect/jvm/internal/KTypeParameterImpl$$Lambda$0;-><init>(ILjava/lang/Object;)V

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->nameResolver:Lkotlinx/coroutines/selects/SelectClause1Impl;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->metadataVersion:Lkotlin/reflect/jvm/internal/impl/metadata/builtins/BuiltInsBinaryVersion;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPackageMemberScope;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmPackagePartSource;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iput-object v2, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/BuiltInsPackageFragmentImpl;->_memberScope:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPackageMemberScope;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Repeated call to DeserializedPackageFragmentImpl::initialize"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "builtins package fragment for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getModule(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
