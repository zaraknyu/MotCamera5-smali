.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final annotationDeserializer:Lkotlinx/coroutines/flow/SharingConfig;

.field public final c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    new-instance v0, Lkotlinx/coroutines/flow/SharingConfig;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->notFoundClasses:Landroidx/work/WorkQuery;

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/flow/SharingConfig;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Landroidx/work/WorkQuery;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->annotationDeserializer:Lkotlinx/coroutines/flow/SharingConfig;

    return-void
.end method


# virtual methods
.method public final asProtoContainer(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Landroidx/room/SharedSQLiteStatement;
    .locals 3

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    invoke-direct {v0, p1, v1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Package;-><init>(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    return-object v0

    :cond_0
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz p0, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->thisAsProtoContainer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoContainer$Class;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;II)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v0, p2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    return-object p0

    :cond_0
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    new-instance v1, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p3, v2}, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;II)V

    invoke-direct {p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    return-object p2
.end method

.method public final getPropertyFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$3;

    invoke-direct {v2, p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$3;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;ZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)V

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final loadConstructor(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Z)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;
    .locals 14

    iget-object v12, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;

    iget v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->flags_:I

    const/4 v13, 0x1

    invoke-virtual {p0, p1, v3, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;II)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    iget-object v7, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v8, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iget-object v9, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->versionRequirementTable:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    iget-object v10, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    move-object v0, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassConstructorDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v12, v0, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->childContext$default(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-result-object v2

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->memberDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->valueParameter_:Ljava/util/List;

    const-string v4, "getValueParameterList(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, p1, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;I)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    iget v4, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->flags_:I

    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v3}, Landroidx/compose/ui/modifier/ModifierLocalMap;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl;->initialize(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)V

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;->isExpect()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isExpect:Z

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONSTRUCTOR_WITH_NON_STABLE_PARAMETER_NAMES:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->flags_:I

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v13

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->hasStableParameterNames:Z

    return-object v0
.end method

.method public final loadFunction(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedSimpleFunctionDescriptor;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v8, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    const-string/jumbo v2, "proto"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    const/4 v13, 0x1

    and-int/2addr v2, v13

    if-ne v2, v13, :cond_0

    iget v2, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->flags_:I

    :goto_0
    move v14, v2

    goto :goto_1

    :cond_0
    iget v2, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->oldFlags_:I

    and-int/lit8 v3, v2, 0x3f

    shr-int/lit8 v2, v2, 0x8

    shl-int/lit8 v2, v2, 0x6

    add-int/2addr v2, v3

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v6, v14, v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;II)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    iget v2, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    and-int/lit8 v4, v2, 0x20

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    :goto_2
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    iget-object v4, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    new-instance v5, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;

    const/4 v7, 0x2

    invoke-direct {v5, v0, v6, v13, v7}, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;II)V

    invoke-direct {v2, v4, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_2
    move-object v2, v15

    :goto_3
    iget-object v0, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    iget v4, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->name_:I

    invoke-static {v1, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->child(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/SuspendFunctionTypeUtilKt;->KOTLIN_SUSPEND_BUILT_IN_FUNCTION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->EMPTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    :goto_4
    move-object v9, v0

    goto :goto_5

    :cond_3
    iget-object v0, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->versionRequirementTable:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    goto :goto_4

    :goto_5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedSimpleFunctionDescriptor;

    iget-object v4, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    iget v5, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->name_:I

    invoke-static {v1, v5}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v5, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-static {v5}, Landroidx/compose/ui/modifier/ModifierLocalMap;->memberKind(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;)I

    move-result v5

    iget-object v7, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v10, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    move-object v11, v2

    const/4 v2, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move-object v13, v4

    move-object v4, v1

    move-object v1, v13

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedSimpleFunctionDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;ILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    iget-object v1, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->typeParameter_:Ljava/util/List;

    const-string v2, "getTypeParameterList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->childContext$default(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-result-object v1

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeDeserializer:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-static {v6, v8}, Landroidx/compose/runtime/saveable/ListSaverKt;->receiverType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v0, v3, v13}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createExtensionReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_6

    :cond_4
    move-object/from16 v17, v4

    :goto_6
    iget-object v3, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    instance-of v5, v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v5, :cond_5

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_7

    :cond_5
    move-object v3, v4

    :goto_7
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_8

    :cond_6
    move-object/from16 v18, v4

    :goto_8
    iget-object v3, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->contextReceiverType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_9

    :cond_7
    move-object v3, v4

    :goto_9
    if-nez v3, :cond_9

    iget-object v3, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->contextReceiverTypeId_:Ljava/util/List;

    const-string v5, "getContextReceiverTypeIdList(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_8
    move-object v3, v5

    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v7, 0x0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    if-ltz v7, :cond_b

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-virtual {v2, v9}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v9

    invoke-static {v0, v9, v4, v15, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createContextReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;I)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v7, v10

    goto :goto_b

    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v4

    :cond_c
    invoke-virtual {v2}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->getOwnTypeParameters()Ljava/util/List;

    move-result-object v20

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->memberDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    iget-object v3, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->valueParameter_:Ljava/util/List;

    const-string v4, "getValueParameterList(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v6, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;I)Ljava/util/List;

    move-result-object v21

    invoke-static {v6, v8}, Landroidx/compose/runtime/saveable/ListSaverKt;->returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v22

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v23

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v24

    sget-object v25, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    move-object/from16 v16, v0

    move-object/from16 v19, v5

    invoke-virtual/range {v16 .. v25}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_OPERATOR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isOperator:Z

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_INFIX:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isInfix:Z

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXTERNAL_FUNCTION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isExternal:Z

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_INLINE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isInline:Z

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_TAILREC:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isTailrec:Z

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_SUSPEND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isSuspend:Z

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXPECT_FUNCTION:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->isExpect:Z

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_FUNCTION_WITH_NON_STABLE_PARAMETER_NAMES:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v26, 0x1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->hasStableParameterNames:Z

    iget-object v1, v12, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->contractDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final loadProperty(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    const-string/jumbo v3, "proto"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/16 v20, 0x6

    if-ne v3, v4, :cond_0

    iget v3, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->flags_:I

    goto :goto_0

    :cond_0
    iget v3, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->oldFlags_:I

    and-int/lit8 v5, v3, 0x3f

    shr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v5

    :goto_0
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;

    move-object/from16 v17, v2

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    const/4 v5, 0x2

    invoke-virtual {v0, v15, v3, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;II)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v5

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v7, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v7

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v8, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v8}, Landroidx/compose/ui/modifier/ModifierLocalMap;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v8

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_VAR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v9, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v10, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v11, v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->name_:I

    invoke-static {v10, v11}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v10

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v11, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;

    invoke-static {v11}, Landroidx/compose/ui/modifier/ModifierLocalMap;->memberKind(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$MemberKind;)I

    move-result v11

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_LATEINIT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v12, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CONST:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v13, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXTERNAL_PROPERTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v14, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_DELEGATED:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v4, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v18, v2

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXPECT_PROPERTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v19, v2

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    move-object/from16 v21, v2

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->versionRequirementTable:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    move-object/from16 v22, v2

    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containerSource:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;

    move/from16 v23, v3

    const/4 v3, 0x0

    move v0, v13

    move v13, v4

    move-object v4, v5

    move-object v5, v7

    move v7, v9

    move v9, v11

    move v11, v0

    move-object v0, v1

    move-object v1, v6

    move-object v6, v8

    move-object v8, v10

    move v10, v12

    move v12, v14

    move/from16 v14, v19

    move-object/from16 v16, v21

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v22

    invoke-direct/range {v1 .. v19}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;ZLkotlin/reflect/jvm/internal/impl/name/Name;IZZZZZLkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedContainerSource;)V

    move-object v6, v1

    move-object v1, v15

    move-object/from16 v2, v17

    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->typeParameter_:Ljava/util/List;

    const-string v4, "getTypeParameterList(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v6, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->childContext$default(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-result-object v3

    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeDeserializer:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_GETTER:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    move/from16 v11, v23

    invoke-virtual {v5, v11}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/16 v5, 0x40

    const/16 v7, 0x20

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    const/4 v13, 0x3

    if-eqz v12, :cond_2

    iget v9, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    and-int/lit8 v10, v9, 0x20

    if-ne v10, v7, :cond_1

    goto :goto_1

    :cond_1
    and-int/2addr v9, v5

    if-ne v9, v5, :cond_2

    :goto_1
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v10, v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    new-instance v14, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;

    const/4 v15, 0x2

    move/from16 v16, v5

    move-object/from16 v5, p0

    invoke-direct {v14, v5, v1, v13, v15}, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$3;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;II)V

    invoke-direct {v9, v10, v14}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_2
    move/from16 v16, v5

    move-object/from16 v5, p0

    move-object v9, v8

    :goto_2
    invoke-static {v1, v2}, Landroidx/compose/runtime/saveable/ListSaverKt;->returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v10

    invoke-virtual {v4}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->getOwnTypeParameters()Ljava/util/List;

    move-result-object v14

    iget-object v15, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    instance-of v13, v15, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-object/from16 v18, v14

    if-eqz v13, :cond_3

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_4

    invoke-interface {v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v13

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    iget v15, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    and-int/lit8 v14, v15, 0x20

    if-ne v14, v7, :cond_5

    iget-object v7, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->receiverType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_5

    :cond_5
    and-int/lit8 v7, v15, 0x40

    move/from16 v14, v16

    if-ne v7, v14, :cond_6

    iget v7, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->receiverTypeId_:I

    invoke-virtual {v2, v7}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v7

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_7

    invoke-virtual {v4, v7}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-static {v6, v7, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createExtensionReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v7

    move-object v9, v7

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    iget-object v7, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->contextReceiverType_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    const/16 v14, 0xa

    if-nez v7, :cond_a

    iget-object v7, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->contextReceiverTypeId_:Ljava/util/List;

    const-string v15, "getContextReceiverTypeIdList(...)"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v7, v14}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_9
    move-object v7, v15

    :cond_a
    move-object v2, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v7, v14}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v21, v7, 0x1

    if-ltz v7, :cond_b

    move/from16 v22, v14

    move-object/from16 v14, v16

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    invoke-virtual {v4, v14}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v6, v14, v15, v8, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createContextReceiverParameterForCallable(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;I)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v7, v21

    move/from16 v14, v22

    goto :goto_9

    :cond_b
    const/4 v15, 0x0

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v15

    :cond_c
    move-object v5, v6

    move-object v8, v13

    move/from16 v22, v14

    move-object/from16 v7, v18

    const/4 v15, 0x0

    move-object v6, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;)V

    move-object v6, v5

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v4, v11}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v7, v11}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->MODALITY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;

    invoke-virtual {v9, v11}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    if-eqz v8, :cond_1a

    if-eqz v10, :cond_19

    if-eqz v5, :cond_d

    iget v4, v4, Landroidx/compose/runtime/changelist/Operation;->ints:I

    const/16 v24, 0x1

    shl-int v4, v24, v4

    goto :goto_a

    :cond_d
    const/16 v24, 0x1

    const/4 v4, 0x0

    :goto_a
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;->getNumber()I

    move-result v5

    iget v10, v9, Landroidx/compose/runtime/changelist/Operation;->ints:I

    shl-int/2addr v5, v10

    or-int/2addr v4, v5

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$EnumLite;->getNumber()I

    move-result v5

    iget v8, v7, Landroidx/compose/runtime/changelist/Operation;->ints:I

    shl-int/2addr v5, v8

    or-int/2addr v4, v5

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_NOT_DEFAULT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_EXTERNAL_ACCESSOR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_INLINE_ACCESSOR:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v15

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    if-eqz v12, :cond_10

    iget v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    const/16 v13, 0x100

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_e

    iget v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->getterFlags_:I

    goto :goto_b

    :cond_e
    move v12, v4

    :goto_b
    invoke-virtual {v5, v12}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v8, v12}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v10, v12}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v21, v4

    const/4 v4, 0x3

    invoke-virtual {v2, v1, v12, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;II)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    if-eqz v13, :cond_f

    move-object/from16 v17, v5

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    invoke-virtual {v9, v12}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-static/range {v22 .. v22}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v22

    invoke-virtual {v7, v12}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v12}, Landroidx/compose/ui/modifier/ModifierLocalMap;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v12

    xor-int/lit8 v13, v13, 0x1

    move-object/from16 v23, v10

    move v10, v13

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getKind()I

    move-result v13

    move/from16 v25, v11

    move v11, v14

    const/4 v14, 0x0

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    move-object/from16 v2, v23

    move-object/from16 v17, v3

    move-object v3, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v9

    move-object v9, v12

    move/from16 v12, v18

    move-object/from16 v18, v7

    move-object v7, v4

    move/from16 v4, v25

    invoke-direct/range {v5 .. v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;ZZZILkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    :goto_c
    move-object v14, v5

    goto :goto_d

    :cond_f
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object v0, v5

    move-object/from16 v18, v7

    move-object v3, v8

    move-object/from16 v22, v9

    move-object v2, v10

    move-object v7, v4

    move v4, v11

    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createDefaultGetter(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    move-result-object v5

    goto :goto_c

    :goto_d
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-virtual {v14, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    goto :goto_e

    :cond_10
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v21, v4

    move-object v0, v5

    move-object/from16 v18, v7

    move-object v3, v8

    move-object/from16 v22, v9

    move-object v2, v10

    move v4, v11

    move-object/from16 v14, v19

    :goto_e
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_SETTER:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_14

    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    const/16 v7, 0x200

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_11

    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->setterFlags_:I

    goto :goto_f

    :cond_11
    move/from16 v5, v21

    :goto_f
    invoke-virtual {v0, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v2, 0x4

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v5, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;II)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v7

    if-eqz v0, :cond_13

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    move-object/from16 v9, v22

    invoke-virtual {v9, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;->modality(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v9

    move-object/from16 v10, v18

    invoke-virtual {v10, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;

    invoke-static {v5}, Landroidx/compose/ui/modifier/ModifierLocalMap;->descriptorVisibility(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Visibility;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v5

    const/16 v24, 0x1

    xor-int/lit8 v10, v0, 0x1

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getKind()I

    move-result v13

    move-object v0, v14

    const/4 v14, 0x0

    move-object/from16 v26, v9

    move-object v9, v5

    move-object v5, v8

    move-object/from16 v8, v26

    invoke-direct/range {v5 .. v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;ZZZILkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object/from16 v8, v17

    invoke-static {v8, v5, v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->childContext$default(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    move-result-object v7

    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->memberDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;

    iget-object v8, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->setterValueParameter_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;I)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    if-eqz v2, :cond_12

    iput-object v2, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->parameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    move-object v14, v5

    goto :goto_10

    :cond_12
    invoke-static/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->$$$reportNull$$$0(I)V

    throw v19

    :cond_13
    move-object v0, v14

    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->createDefaultSetter(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    move-result-object v14

    goto :goto_10

    :cond_14
    move-object/from16 v3, p0

    move-object v0, v14

    move-object/from16 v14, v19

    :goto_10
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_CONSTANT:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$0;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v6, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;I)V

    move-object/from16 v15, v19

    invoke-virtual {v6, v15, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setCompileTimeInitializer(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;Lkotlin/jvm/functions/Function0;)V

    :cond_15
    move-object/from16 v2, v16

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    instance-of v4, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v4, :cond_16

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_11

    :cond_16
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_17

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v2

    goto :goto_12

    :cond_17
    const/4 v2, 0x0

    :goto_12
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-ne v2, v4, :cond_18

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$0;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v6, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$0;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedPropertyDescriptor;I)V

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setCompileTimeInitializer(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;Lkotlin/jvm/functions/Function0;)V

    :cond_18
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getPropertyFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/media3/common/BasePlayer;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->getPropertyFieldAnnotations(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    invoke-direct {v4, v1}, Landroidx/media3/common/BasePlayer;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    invoke-virtual {v6, v0, v14, v2, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;)V

    return-object v6

    :cond_19
    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->$$$reportNull$$$0(I)V

    const/16 v19, 0x0

    throw v19

    :cond_1a
    move-object/from16 v19, v15

    invoke-static/range {v22 .. v22}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->$$$reportNull$$$0(I)V

    throw v19
.end method

.method public final valueParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;I)Ljava/util/List;
    .locals 25

    move-object/from16 v1, p0

    iget-object v7, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v8, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iget-object v9, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeDeserializer:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v0

    const-string v2, "getContainingDeclaration(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;->asProtoContainer(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    const/16 v0, 0xa

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v13, v23

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v24, v13, 0x1

    const/4 v12, 0x0

    if-ltz v13, :cond_5

    move-object v6, v0

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;

    iget v0, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    iget v0, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->flags_:I

    move v14, v0

    goto :goto_1

    :cond_0
    move/from16 v14, v23

    :goto_1
    if-eqz v2, :cond_1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->HAS_ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v0, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v15, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;

    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    move-object v3, v0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;

    move/from16 v4, p3

    move v5, v13

    move-object v13, v3

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer$$Lambda$5;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;Landroidx/room/SharedSQLiteStatement;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;IILkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;)V

    invoke-direct {v15, v13, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/NonEmptyDeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_1
    move v5, v13

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    :goto_2
    iget-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v1, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->name_:I

    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getName(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-static {v6, v8}, Landroidx/compose/runtime/saveable/ListSaverKt;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v16

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->DECLARES_DEFAULT_VALUE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_CROSSINLINE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->IS_NOINLINE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    invoke-virtual {v1, v14}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    iget v1, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->bitField0_:I

    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    iget-object v1, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->varargElementType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_3

    :cond_2
    and-int/lit8 v1, v1, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_3

    iget v1, v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->varargElementTypeId_:I

    invoke-virtual {v8, v1}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v12

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v9, v1}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v12

    :cond_4
    move-object v1, v10

    move-object/from16 v20, v12

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    const/4 v12, 0x0

    sget-object v21, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    move v13, v5

    move-object v14, v15

    move-object v15, v0

    invoke-direct/range {v10 .. v21}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;ILkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v1

    move/from16 v13, v24

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v12

    :cond_6
    move-object v1, v10

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
