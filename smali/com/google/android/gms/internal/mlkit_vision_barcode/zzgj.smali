.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ProvideContentColorTextStyle-3J-VO9M(JLandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 6

    const v0, -0x2aaf331b

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p4, p0, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    invoke-virtual {p4, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x93

    const/16 v1, 0x92

    if-ne v0, v1, :cond_3

    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Landroidx/compose/material3/TextKt;->LocalTextStyle:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v1, p2}, Landroidx/compose/ui/text/TextStyle;->merge(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    sget-object v2, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v3, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v3, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    filled-new-array {v2, v0}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_3
    invoke-virtual {p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p4

    if-eqz p4, :cond_4

    new-instance v0, Landroidx/compose/material3/ButtonKt$Button$2;

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ButtonKt$Button$2;-><init>(JLandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, p4, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final computeInternalName(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;)Ljava/lang/String;
    .locals 3

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "typeMappingConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v0

    const-string v1, "getContainingDeclaration(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/name/SpecialNames;->NO_NAME_PROVIDED:Lkotlin/reflect/jvm/internal/impl/name/Name;

    iget-boolean v2, v1, Lkotlin/reflect/jvm/internal/impl/name/Name;->special:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/name/SpecialNames;->SAFE_IDENTIFIER_FOR_NO_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    :goto_0
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    if-eqz v2, :cond_2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->fqName:Ljava/lang/String;

    const/16 v0, 0x2e

    const/16 v2, 0x2f

    invoke-static {p0, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->computeInternalName(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x24

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;

    const-string v4, "kotlinType"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v4, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->isForAnnotationParameter:Z

    const-string/jumbo v5, "writeGenericType"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/appcompat/app/ActionBar;->isSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v5

    const-string v6, "getType(...)"

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/SuspendFunctionTypesKt;->FAKE_CONTINUATION_CLASS_DESCRIPTOR:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;

    invoke-static {v0}, Landroidx/appcompat/app/ActionBar;->isSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    invoke-static {v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v8

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v9

    invoke-static {v0}, Landroidx/appcompat/app/ActionBar;->getReceiverTypeFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v10

    invoke-static {v0}, Landroidx/appcompat/app/ActionBar;->getContextReceiverTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v11

    invoke-static {v0}, Landroidx/appcompat/app/ActionBar;->getValueParameterTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/SuspendFunctionTypesKt;->FAKE_CONTINUATION_CLASS_DESCRIPTOR:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v5

    invoke-static {v0}, Landroidx/appcompat/app/ActionBar;->isBuiltinFunctionalType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v12

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Landroidx/compose/ui/res/PainterResources_androidKt;->asTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v3, v5, v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getNullableAnyType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v13

    const-string v3, "getNullableAnyType(...)"

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Landroidx/appcompat/app/ActionBar;->createFunctionType(Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v0

    invoke-virtual {v3, v0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asRigidType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->lowerBound(Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->asRigidType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_3
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v8

    const-string v9, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    const-string v10, "["

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v8, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string v8, "$receiver"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v13, v5, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    const-string v14, ", "

    const-string v15, "ClassicTypeSystemContext couldn\'t handle: "

    if-eqz v13, :cond_25

    move-object v13, v5

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveType(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    goto :goto_1

    :pswitch_1
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->LONG:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    goto :goto_1

    :pswitch_2
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    goto :goto_1

    :pswitch_3
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->INT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    goto :goto_1

    :pswitch_4
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->SHORT:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    goto :goto_1

    :pswitch_5
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->BYTE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    goto :goto_1

    :pswitch_6
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->CHAR:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    goto :goto_1

    :pswitch_7
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Primitive;

    :goto_1
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/java/JvmAnnotationNames;->ENHANCED_NULLABILITY_ANNOTATION:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v11, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->hasAnnotation(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    move v8, v7

    goto :goto_3

    :cond_6
    :goto_2
    move v8, v12

    :goto_3
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->boxTypeIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_6

    :cond_7
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v13, v5, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    if-eqz v13, :cond_24

    move-object v13, v5

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveArrayType(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v13

    if-eqz v13, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->TYPE_BY_PRIMITIVE_TYPE:Ljava/util/EnumMap;

    invoke-virtual {v8, v13}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->createFromString(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    move-result-object v11

    goto/16 :goto_6

    :cond_8
    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->$$$reportNull$$$0(I)V

    throw v11

    :cond_9
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v13, v5, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    if-eqz v13, :cond_23

    move-object v13, v5

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-interface {v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isUnderKotlinPackage(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Z

    move-result v13

    if-ne v13, v12, :cond_a

    move v13, v12

    goto :goto_4

    :cond_a
    move v13, v7

    :goto_4
    if-eqz v13, :cond_f

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v8, v5, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    if-eqz v8, :cond_e

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameUnsafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v5

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->NUMBERED_FUNCTION_PREFIX:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mapKotlinToJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-boolean v8, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->kotlinCollectionsToJavaCollections:Z

    if-nez v8, :cond_d

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mutabilityMappings:Ljava/util/List;

    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap$PlatformMutabilityMapping;

    iget-object v13, v13, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap$PlatformMutabilityMapping;->javaClass:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v13, v5}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    goto :goto_6

    :cond_d
    :goto_5
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->internalNameByClassId(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->createObjectType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;

    move-result-object v11

    goto :goto_6

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {v2, v1, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_6
    if-eqz v11, :cond_10

    iget-boolean v3, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->needPrimitiveBoxing:Z

    invoke-static {v11, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgo;->boxTypeIfNeeded(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_10
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v5

    instance-of v8, v5, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v8, :cond_12

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    iget-object v0, v5, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v0, :cond_11

    invoke-static {v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->replaceArgumentsWithStarProjections(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v1, v5, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    const-string/jumbo v0, "types"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v2, "There should be no intersection type in existing descriptors, but found: "

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_12
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v0, "error/NonExistentClass"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->createObjectType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;

    move-result-object v0

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    return-object v0

    :cond_13
    instance-of v8, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v8, :cond_1a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isArray(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v12, :cond_19

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v5, v6, :cond_14

    const-string v0, "java/lang/Object"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->createObjectType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;

    move-result-object v0

    goto :goto_8

    :cond_14
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    const-string v5, "getProjectionKind(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_17

    if-eq v0, v12, :cond_16

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->genericArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    if-nez v0, :cond_18

    goto :goto_7

    :cond_16
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->genericContravariantArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    if-nez v0, :cond_18

    goto :goto_7

    :cond_17
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->genericInvariantArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    if-nez v0, :cond_18

    :goto_7
    move-object v0, v1

    :cond_18
    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->toString(Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->createFromString(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType;

    move-result-object v0

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "arrays must have one type argument"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    if-eqz v8, :cond_1e

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isInlineClass(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-boolean v6, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->needInlineClassWrapping:Z

    if-nez v6, :cond_1b

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->computeExpandedTypeInner(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v6, :cond_1b

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    iget-boolean v11, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->needPrimitiveBoxing:Z

    iget-boolean v13, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->isForAnnotationParameter:Z

    iget-boolean v14, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->skipDeclarationSiteWildcards:Z

    iget-boolean v15, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->skipDeclarationSiteWildcardsIfPossible:Z

    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->genericArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    iget-boolean v3, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->kotlinCollectionsToJavaCollections:Z

    iget-object v4, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->genericContravariantArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->genericInvariantArgumentMode:Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;

    const/16 v20, 0x200

    const/4 v12, 0x1

    move-object/from16 v16, v0

    move-object/from16 v19, v1

    move/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v10 .. v20}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;-><init>(ZZZZZLkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;ZLkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;I)V

    invoke-static {v6, v10, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1b
    if-eqz v4, :cond_1c

    move-object v4, v5

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->BUILTINS_MODULE_NAME:Lkotlin/reflect/jvm/internal/impl/name/Name;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->kClass:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->classFqNameEquals(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v3, "java/lang/Class"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->createObjectType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;

    move-result-object v3

    goto :goto_9

    :cond_1c
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v4

    const-string v6, "getOriginal(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v4

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-ne v4, v7, :cond_1d

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    :cond_1d
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->computeInternalName(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmTypeFactoryImpl;->createObjectType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/JvmType$Object;

    move-result-object v3

    :goto_9
    invoke-interface {v2, v0, v3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_1e
    instance-of v3, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v3, :cond_20

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-static {v5}, Landroidx/compose/ui/res/PainterResources_androidKt;->getRepresentativeUpperBound(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v2

    :cond_1f
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$$Lambda$7;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt$$Lambda$7;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_20
    instance-of v3, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    if-eqz v3, :cond_21

    iget-boolean v3, v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;->mapTypeAliases:Z

    if-eqz v3, :cond_21

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeAliasDescriptor;->getExpandedType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgj;->mapType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingMode;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_21
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no descriptor for type constructor of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {v2, v1, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {v2, v1, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-static {v2, v1, v0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$ExternalSyntheticOutline0;->m(Lkotlin/jvm/internal/ReflectionFactory;Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
