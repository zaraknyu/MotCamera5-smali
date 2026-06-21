.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$$Lambda$2;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$$Lambda$2;->arg$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$$Lambda$2;->$r8$classId:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "name"

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$$Lambda$2;->arg$0:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->declaredField:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    invoke-virtual {v3, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/utils/DFS;->addIfNotNull(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->computeNonDeclaredProperties(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->getOwnerDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v1

    sget v3, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->$r8$clinit:I

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isKindOf(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->c:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signatureEnhancement:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;

    invoke-virtual {v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhanceSignatures(Landroidx/media3/extractor/text/pgs/PgsParser;Ljava/util/SequencedCollection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/LinkedHashSet;

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->declaredFunctions:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    invoke-virtual {v5, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    invoke-static {v8, v2}, Landroidx/compose/runtime/collection/ScopeMap;->computeJvmDescriptor$default(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v3, :cond_3

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$$Lambda$9;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$$Lambda$9;

    invoke-static {v5, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory;->selectMostSpecificInEachOverridableGroup(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v4, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->computeNonDeclaredFunctions(Ljava/util/LinkedHashSet;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->c:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v1, v0, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->signatureEnhancement:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;

    invoke-virtual {v1, v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/JavaTypeEnhancement;->enhanceSignatures(Landroidx/media3/extractor/text/pgs/PgsParser;Ljava/util/SequencedCollection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->mainScope:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;

    if-eqz v4, :cond_5

    iget-object v0, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->declaredField:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    goto/16 :goto_c

    :cond_5
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->declaredMemberIndex:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/DeclaredMemberIndex;

    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/DeclaredMemberIndex;->findFieldByName(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_16

    iget-object v5, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;->member:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v6

    if-nez v6, :cond_16

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;->getMember()Ljava/lang/reflect/Member;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v7

    xor-int/lit8 v11, v7, 0x1

    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->c:Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-static {v7, v1}, Landroidx/compose/foundation/text/ClickableTextKt;->resolveAnnotations(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationOwner;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    move-result-object v9

    iget-object v8, v7, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    move-object v15, v8

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->getOwnerDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v8

    sget-object v10, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getVisibility()Landroidx/appcompat/view/ActionMode;

    move-result-object v10

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/load/java/UtilsKt;->toDescriptorVisibility(Landroidx/appcompat/view/ActionMode;)Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    move-result-object v10

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMember;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v12

    iget-object v13, v15, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->sourceElementFactory:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;

    invoke-virtual {v13, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeErrorReporter;->source(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaElement;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;

    move-result-object v13

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;->getMember()Ljava/lang/reflect/Member;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Field;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v14

    move/from16 v16, v2

    const/4 v2, 0x0

    if-eqz v14, :cond_6

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;->getMember()Ljava/lang/reflect/Member;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Field;

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_6

    move v14, v3

    goto :goto_3

    :cond_6
    move v14, v2

    :goto_3
    invoke-static/range {v8 .. v14}, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;->create(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeSourceElementFactory$RuntimeSourceElement;Z)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor;

    move-result-object v8

    iput-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v8, v4, v4, v4, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FieldDescriptorImpl;)V

    iget-object v8, v7, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;

    check-cast v8, Lcom/google/zxing/Result;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    const-string v9, "getGenericType(...)"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v9, v5, Ljava/lang/Class;

    if-eqz v9, :cond_7

    move-object v10, v5

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;

    invoke-direct {v5, v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaPrimitiveType;-><init>(Ljava/lang/Class;)V

    goto :goto_6

    :cond_7
    instance-of v10, v5, Ljava/lang/reflect/GenericArrayType;

    if-nez v10, :cond_a

    if-eqz v9, :cond_8

    move-object v9, v5

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    instance-of v9, v5, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_9

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;

    check-cast v5, Ljava/lang/reflect/WildcardType;

    invoke-direct {v9, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaWildcardType;-><init>(Ljava/lang/reflect/WildcardType;)V

    :goto_4
    move-object v5, v9

    goto :goto_6

    :cond_9
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;

    invoke-direct {v9, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaClassifierType;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_4

    :cond_a
    :goto_5
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;

    invoke-direct {v9, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaArrayType;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_4

    :goto_6
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    const/4 v10, 0x7

    invoke-static {v9, v2, v4, v10}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/google/zxing/Result;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isString(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;->getMember()Ljava/lang/reflect/Member;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;->getMember()Ljava/lang/reflect/Member;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    :cond_c
    iget-object v5, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v17, v5

    check-cast v17, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    move-result-object v20

    const/16 v21, 0x0

    sget-object v19, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object/from16 v22, v19

    invoke-virtual/range {v17 .. v22}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;Ljava/util/List;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->getOwnerDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v5

    instance-of v8, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v8, :cond_d

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_7

    :cond_d
    move-object v5, v4

    :goto_7
    if-eqz v5, :cond_e

    iget-object v5, v15, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->syntheticPartsProvider:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/SyntheticJavaPartsProvider;

    iget-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/CompositeSyntheticJavaPartsProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "propertyDescriptor"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "c"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_e
    iget-object v5, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptor;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    if-eqz v7, :cond_15

    if-eqz v5, :cond_14

    sget v8, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->$r8$clinit:I

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/VariableDescriptor;->isVar()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v8

    if-eqz v8, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->acceptsNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v7

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v8

    if-nez v8, :cond_11

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getStringType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "Number"

    invoke-virtual {v7, v9}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getBuiltInClassByName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v9

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v7

    invoke-virtual {v8, v7, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/UnsignedTypes;->isUnsignedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    :goto_8
    iget-object v5, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$$Lambda$10;

    invoke-direct {v7, v0, v1, v6, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope$$Lambda$10;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaField;Lkotlin/jvm/internal/Ref$ObjectRef;I)V

    invoke-virtual {v5, v4, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->setCompileTimeInitializer(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue;Lkotlin/jvm/functions/Function0;)V

    :cond_12
    :goto_9
    iget-object v0, v15, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaResolverCache:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_13

    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    goto :goto_c

    :cond_13
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x6

    packed-switch v1, :pswitch_data_1

    const-string v4, "fqName"

    aput-object v4, v0, v2

    goto :goto_a

    :pswitch_2
    const-string v4, "javaClass"

    aput-object v4, v0, v2

    goto :goto_a

    :pswitch_3
    const-string v4, "field"

    aput-object v4, v0, v2

    goto :goto_a

    :pswitch_4
    const-string v4, "element"

    aput-object v4, v0, v2

    goto :goto_a

    :pswitch_5
    const-string v4, "descriptor"

    aput-object v4, v0, v2

    goto :goto_a

    :pswitch_6
    const-string v4, "member"

    aput-object v4, v0, v2

    :goto_a
    const-string v2, "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1"

    aput-object v2, v0, v3

    packed-switch v1, :pswitch_data_2

    const-string v1, "getClassResolvedFromSource"

    aput-object v1, v0, v16

    goto :goto_b

    :pswitch_7
    const-string/jumbo v1, "recordClass"

    aput-object v1, v0, v16

    goto :goto_b

    :pswitch_8
    const-string/jumbo v1, "recordField"

    aput-object v1, v0, v16

    goto :goto_b

    :pswitch_9
    const-string/jumbo v1, "recordConstructor"

    aput-object v1, v0, v16

    goto :goto_b

    :pswitch_a
    const-string/jumbo v1, "recordMethod"

    aput-object v1, v0, v16

    :goto_b
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    const/16 v0, 0x42

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->$$$reportNull$$$0(I)V

    throw v4

    :cond_15
    const/16 v0, 0x41

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->$$$reportNull$$$0(I)V

    throw v4

    :cond_16
    move-object v0, v4

    :goto_c
    return-object v0

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->mainScope:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;

    if-eqz v2, :cond_17

    iget-object v0, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->declaredFunctions:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_e

    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->declaredMemberIndex:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/DeclaredMemberIndex;

    invoke-interface {v3, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/DeclaredMemberIndex;->findMethodsByName(Lkotlin/reflect/jvm/internal/impl/name/Name;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->resolveMethodToFunctionDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectJavaMethod;)Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->isVisibleAsFunction(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->c:Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v5, v5, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;

    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/JavaResolverComponents;->javaResolverCache:Lkotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_19
    invoke-virtual {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaScope;->computeImplicitlyDeclaredFunctions(Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    move-object v0, v2

    :goto_e
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
