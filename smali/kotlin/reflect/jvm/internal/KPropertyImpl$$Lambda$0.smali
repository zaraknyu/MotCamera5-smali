.class public final Lkotlin/reflect/jvm/internal/KPropertyImpl$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$$Lambda$0;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$$Lambda$0;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KPropertyImpl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->name:Ljava/lang/String;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "signature"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->LOCAL_PROPERTY_SIGNATURE:Lkotlin/text/Regex;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lkotlin/text/Regex;->nativePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "matcher(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/text/MatcherMatchResult;

    invoke-direct {v1, v5, p0}, Lkotlin/text/MatcherMatchResult;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    invoke-virtual {p0, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getLocalProperty(I)Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v1, Lkotlinx/coroutines/CoroutinesInternalError;

    const-string v2, "Local property #"

    const-string v3, " not found in "

    invoke-static {v2, p0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getProperties(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapPropertySignature(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lcom/motorola/camera/CountryDetector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/camera/CountryDetector;->asString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v6, ") not resolved in "

    const-string v7, "\' (JVM signature: "

    const-string v8, "Property \'"

    if-nez v1, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v3, :cond_9

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/MemberDescriptor;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_5

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v5, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$$Lambda$1;

    invoke-direct {v5, v2}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$$Lambda$1;-><init>(I)V

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_7

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    goto :goto_4

    :cond_7
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->getProperties(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/Iterable;

    sget-object v13, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$4:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/16 v14, 0x1e

    const-string v10, "\n"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lkotlinx/coroutines/CoroutinesInternalError;

    invoke-static {v8, v4, v7, p0, v6}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, " no members found"

    goto :goto_3

    :cond_8
    const-string v0, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    :goto_4
    return-object v1

    :cond_a
    new-instance v1, Lkotlinx/coroutines/CoroutinesInternalError;

    invoke-static {v8, v4, v7, p0, v6}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lkotlinx/coroutines/CoroutinesInternalError;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v0, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->JAVA_LANG_VOID:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    move-result-object v0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->container:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapPropertySignature(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lcom/motorola/camera/CountryDetector;

    move-result-object v0

    instance-of v4, v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;

    if-eqz v4, :cond_14

    check-cast v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;->proto:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;->descriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->EXTENSION_REGISTRY:Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$KotlinProperty;->typeTable:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    invoke-static {v4, v6, v0, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->getJvmFieldSignature(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Landroidx/media3/extractor/text/cea/CeaSubtitle;Z)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Field;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    goto :goto_7

    :cond_b
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v7

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {v7, v8}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isKindOf(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    move-result v8

    if-nez v8, :cond_c

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {v7, v8}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isKindOf(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/CompanionObjectMapping;->classIds:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->isMappedIntrinsicCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z

    move-result v6

    if-nez v6, :cond_d

    :goto_5
    move v2, v3

    goto :goto_7

    :cond_d
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getBackingField()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroidx/media3/common/BasePlayer;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAbi;->JVM_FIELD_ANNOTATION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {v6, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v3

    goto :goto_6

    :cond_e
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotated;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAbi;->JVM_FIELD_ANNOTATION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-interface {v6, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result v6

    :goto_6
    if-eqz v6, :cond_f

    goto :goto_5

    :cond_f
    :goto_7
    if-nez v2, :cond_12

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->isMovedFromInterfaceCompanion(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v2

    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v3, :cond_11

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/UtilKt;->toJavaClass(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_9

    :cond_11
    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_9

    :cond_12
    :goto_8
    invoke-interface {p0}, Lkotlin/jvm/internal/ClassBasedDeclarationContainer;->getJClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_9
    if-eqz p0, :cond_17

    :try_start_0
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Field;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_13
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "companionObject"

    aput-object v0, p0, v2

    const-string v0, "kotlin/reflect/jvm/internal/impl/load/java/DescriptorsJvmAbiUtil"

    aput-object v0, p0, v3

    const-string v0, "isClassCompanionObjectWithBackingFieldsInOuter"

    aput-object v0, p0, v7

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaField;

    if-eqz p0, :cond_15

    check-cast v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaField;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaField;->field:Ljava/lang/reflect/Field;

    goto :goto_a

    :cond_15
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$JavaMethodProperty;

    if-eqz p0, :cond_16

    goto :goto_a

    :cond_16
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/JvmPropertySignature$MappedKotlinProperty;

    if-eqz p0, :cond_18

    :catch_0
    :cond_17
    :goto_a
    return-object v1

    :cond_18
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
