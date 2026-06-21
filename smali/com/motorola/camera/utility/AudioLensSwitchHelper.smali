.class public final Lcom/motorola/camera/utility/AudioLensSwitchHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;


# instance fields
.field public final synthetic $r8$classId:I

.field public mAudioLensStateCallback:Ljava/lang/Object;

.field public mAudioManager:Ljava/lang/Object;

.field public mAudioRadarManager:Ljava/lang/Object;

.field public mAudioRadarMangerInstance:Ljava/lang/Object;

.field public mProxy:Ljava/lang/Object;

.field public mRegisterCallback:Ljava/lang/Object;

.field public munRegisterCallback:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/Fsm;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->$r8$classId:I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    iput-object p5, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 6
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d011f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x7f0a04bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    .line 9
    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 10
    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/uicomponents/PhotoBoothComponent$$ExternalSyntheticLambda16;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const v1, 0x7f1205da

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_1

    const v4, 0x7f120588

    .line 13
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 14
    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f0a04c1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p1}, Landroid/view/View;->measure(II)V

    .line 18
    new-instance p1, Landroid/widget/PopupWindow;

    .line 19
    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/4 v1, -0x2

    .line 20
    invoke-direct {p1, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 22
    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p1, Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 23
    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p1, Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f13020a

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 24
    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p1, Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 25
    iput-object p2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lcom/motorola/camera/utility/AudioLensSwitchHelper;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->$r8$classId:I

    const-string/jumbo v0, "typeParameterProtos"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    .line 29
    iput-object p4, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    .line 30
    iput-object p5, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    .line 31
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    .line 32
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    .line 33
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;-><init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;I)V

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    .line 34
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;-><init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;I)V

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;->createMemoizedFunctionWithNullableValues(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    .line 35
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    goto :goto_1

    .line 37
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    .line 39
    iget v0, p5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->id_:I

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;

    iget-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    invoke-direct {v1, v2, p5, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedTypeParameterDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    return-void
.end method

.method public static createSimpleSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 7

    invoke-static {p0}, Landroidx/compose/ui/res/PainterResources_androidKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    invoke-static {p0}, Landroidx/appcompat/app/ActionBar;->getReceiverTypeFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    invoke-static {p0}, Landroidx/appcompat/app/ActionBar;->getContextReceiverTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, Landroidx/appcompat/app/ActionBar;->getValueParameterTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object v5, v4

    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroidx/appcompat/app/ActionBar;->createFunctionType(Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Ljava/util/ArrayList;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public static final simpleType$collectAllArguments(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lcom/motorola/camera/utility/AudioLensSwitchHelper;)Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->argument_:Ljava/util/List;

    const-string v1, "getArgumentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    invoke-static {p0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->outerType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->simpleType$collectAllArguments(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lcom/motorola/camera/utility/AudioLensSwitchHelper;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static toAttributes(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p0, p3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/types/DefaultTypeAttributeTranslator;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    goto :goto_1

    :cond_0
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttribute;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p3

    :goto_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_2

    :cond_2
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static final typeConstructor$notFoundClass(Lcom/motorola/camera/utility/AudioLensSwitchHelper;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;I)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-static {v1, p2}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p2

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;-><init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;I)V

    invoke-static {v1, p1}, Lkotlin/sequences/SequencesKt;->generateSequence(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$4;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$4;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lkotlin/sequences/TransformingSequence;->sequence:Lkotlin/sequences/Sequence;

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkotlin/sequences/TransformingSequence;->transformer:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1;

    invoke-static {p0, p2}, Lkotlin/sequences/SequencesKt;->generateSequence(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->count(Lkotlin/sequences/Sequence;)I

    move-result p0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, p0, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->notFoundClasses:Landroidx/work/WorkQuery;

    invoke-virtual {p0, p2, p1}, Landroidx/work/WorkQuery;->getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getOwnTypeParameters()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public initAudioLensSwitch(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;)Z
    .locals 6

    const-string v0, "com.motorola.audio.radar.AudioRadarManager"

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AudioLensSwitchHelper"

    if-nez v0, :cond_0

    const-string p0, "Can\'t find AudioRadarManager class"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "com.motorola.audio.radar.AudioRadarManager$AudioRadarFWCallback"

    invoke-static {v0}, Lcom/motorola/camera/utility/ColorUtil;->classForNameOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Can\'t find AudioRadarFWCallback interface"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    new-instance p1, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {p1, v3, p0}, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    const-string/jumbo v3, "registerCallback"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    iget-object v5, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    const-string/jumbo v4, "unregisterCallback"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v3

    :cond_2
    const-string p0, "audio_radar=1"

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public loadTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->loadTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iget-object v4, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v5, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->containingDeclaration:Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    const-string/jumbo v6, "proto"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit8 v7, v6, 0x10

    const/16 v8, 0x80

    const/16 v9, 0x10

    if-ne v7, v9, :cond_0

    iget v6, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    iget-object v7, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-static {v7, v6}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v6

    iget-boolean v6, v6, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isLocal:Z

    if-eqz v6, :cond_1

    iget-object v6, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->localClassifierTypeSettings:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    and-int/2addr v6, v8

    if-ne v6, v8, :cond_1

    iget v6, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    iget-object v7, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-static {v7, v6}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v6

    iget-boolean v6, v6, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isLocal:Z

    if-eqz v6, :cond_1

    iget-object v6, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->localClassifierTypeSettings:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/ProtoEnumFlags;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    iget v6, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit8 v7, v6, 0x10

    const-string v10, "getTypeConstructor(...)"

    const/4 v11, 0x0

    if-ne v7, v9, :cond_2

    iget-object v2, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    iget v6, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    if-nez v2, :cond_8

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->className_:I

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->typeConstructor$notFoundClass(Lcom/motorola/camera/utility/AudioLensSwitchHelper;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;I)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v2

    goto/16 :goto_2

    :cond_2
    and-int/lit8 v7, v6, 0x20

    const/16 v9, 0x20

    if-ne v7, v9, :cond_3

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameter_:I

    invoke-virtual {v0, v2}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->loadTypeParameter(I)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v2

    if-nez v2, :cond_8

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    iget v6, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameter_:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeConstructor;

    move-result-object v2

    goto/16 :goto_3

    :cond_3
    and-int/lit8 v7, v6, 0x40

    const/16 v9, 0x40

    if-ne v7, v9, :cond_7

    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v6, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeParameterName_:I

    invoke-interface {v2, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->getOwnTypeParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v8

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    move-object v6, v7

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-nez v6, :cond_6

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER_BY_NAME:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeConstructor;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, v6

    goto :goto_2

    :cond_7
    and-int/lit16 v2, v6, 0x80

    if-ne v2, v8, :cond_9

    iget-object v2, v0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;

    iget v6, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    if-nez v2, :cond_8

    iget v2, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->typeAliasName_:I

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->typeConstructor$notFoundClass(Lcom/motorola/camera/utility/AudioLensSwitchHelper;Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;I)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNKNOWN_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    new-array v6, v11, [Ljava/lang/String;

    invoke-static {v2, v6}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeConstructor;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_a

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->TYPE_FOR_ERROR_TYPE_CONSTRUCTOR:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v0, v3, v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeWithArguments(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v0

    return-object v0

    :cond_a
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;

    iget-object v8, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->storageManager:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    new-instance v9, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;

    const/16 v13, 0xf

    invoke-direct {v9, v13, v0, v1}, Lkotlin/reflect/jvm/internal/KTypeImpl$$Lambda$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v6, v8, v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function0;)V

    iget-object v8, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->typeAttributeTranslators:Ljava/util/List;

    invoke-static {v8, v6, v2, v5}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->toAttributes(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v8

    invoke-static {v1, v0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->simpleType$collectAllArguments(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Lcom/motorola/camera/utility/AudioLensSwitchHelper;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v9, v14}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v15, v11

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v15, 0x1

    if-ltz v15, :cond_14

    move-object/from16 v11, v16

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;

    const/16 v16, 0x0

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v12

    const-string v14, "getParameters(...)"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v15}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    iget-object v14, v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->projection_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    sget-object v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;->STAR:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument$Projection;

    if-ne v14, v15, :cond_c

    if-nez v12, :cond_b

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;

    iget-object v12, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v12

    invoke-direct {v11, v12}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionForAbsentTypeParameter;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;)V

    goto/16 :goto_7

    :cond_b
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v11, v12}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    goto/16 :goto_7

    :cond_c
    const-string v12, "getProjection(...)"

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/4 v15, 0x2

    if-eqz v12, :cond_10

    if-eq v12, v7, :cond_f

    if-eq v12, v15, :cond_e

    const/4 v0, 0x3

    if-eq v12, v0, :cond_d

    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only IN, OUT and INV are supported. Actual argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_5

    :cond_f
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_5

    :cond_10
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :goto_5
    iget v14, v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->bitField0_:I

    and-int/lit8 v7, v14, 0x2

    if-ne v7, v15, :cond_11

    iget-object v7, v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->type_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_6

    :cond_11
    and-int/lit8 v7, v14, 0x4

    const/4 v14, 0x4

    if-ne v7, v14, :cond_12

    iget v7, v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Argument;->typeId_:I

    invoke-virtual {v3, v7}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v7

    goto :goto_6

    :cond_12
    move-object/from16 v7, v16

    :goto_6
    if-nez v7, :cond_13

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->NO_RECORDED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v11

    invoke-direct {v7, v11}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    move-object v11, v7

    goto :goto_7

    :cond_13
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-virtual {v0, v7}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    invoke-direct {v11, v7, v12}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)V

    :goto_7
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v15, v17

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/16 v14, 0xa

    goto/16 :goto_4

    :cond_14
    const/16 v16, 0x0

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v16

    :cond_15
    const/16 v16, 0x0

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v9

    if-eqz p2, :cond_1a

    instance-of v11, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    if-eqz v11, :cond_1a

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    const-string v8, "<this>"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    move-object v8, v9

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;

    iget-object v8, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor;->typeConstructor:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeAliasDescriptor$typeConstructor$1;->getParameters()Ljava/util/List;

    move-result-object v8

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v8, v12}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    invoke-static {v11, v7}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v8

    new-instance v11, Landroidx/media3/extractor/text/pgs/PgsParser;

    move-object/from16 v12, v16

    invoke-direct {v11, v12, v9, v7, v8}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Ljava/util/List;Ljava/util/Map;)V

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    const-string v7, "attributes"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v10 .. v15}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandRecursively(Landroidx/media3/extractor/text/pgs/PgsParser;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v7

    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->typeAttributeTranslators:Ljava/util/List;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_17

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion$EMPTY$1;

    goto :goto_9

    :cond_17
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationsImpl;-><init>(Ljava/util/List;I)V

    move-object v6, v8

    :goto_9
    invoke-static {v4, v6, v2, v5}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->toAttributes(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v2

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v4

    if-nez v4, :cond_19

    iget-boolean v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->nullable_:Z

    if-eqz v4, :cond_18

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    goto :goto_b

    :cond_19
    :goto_a
    const/4 v4, 0x1

    :goto_b
    invoke-virtual {v7, v4}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-virtual {v4, v2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    goto/16 :goto_12

    :cond_1a
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->SUSPEND_TYPE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v6, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flags_:I

    invoke-virtual {v4, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_28

    iget-boolean v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->nullable_:Z

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v6, v9

    if-eqz v6, :cond_1d

    const/4 v9, 0x1

    if-eq v6, v9, :cond_1c

    :cond_1b
    :goto_c
    move-object/from16 v12, v16

    goto/16 :goto_11

    :cond_1c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v9

    if-ltz v5, :cond_1b

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v6

    invoke-virtual {v6, v5}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getSuspendFunction(I)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8, v5, v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v12

    goto/16 :goto_11

    :cond_1d
    invoke-static {v7, v8, v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v12

    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-static {v4}, Landroidx/appcompat/app/ActionBar;->getFunctionTypeKind(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;)Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    move-result-object v4

    goto :goto_d

    :cond_1e
    move-object/from16 v4, v16

    :goto_d
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$Function;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$Function;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_c

    :cond_1f
    invoke-static {v12}, Landroidx/appcompat/app/ActionBar;->getValueParameterTypesFromFunctionType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    if-nez v4, :cond_20

    goto :goto_c

    :cond_20
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v6

    if-eqz v6, :cond_21

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v6

    goto :goto_e

    :cond_21
    move-object/from16 v6, v16

    :goto_e
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_26

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->CONTINUATION_INTERFACE_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializerKt;->EXPERIMENTAL_CONTINUATION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto :goto_11

    :cond_22
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    const-string v6, "getType(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    if-eqz v6, :cond_23

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    goto :goto_f

    :cond_23
    move-object/from16 v5, v16

    :goto_f
    if-eqz v5, :cond_24

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->fqNameOrNull(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorNonRoot;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    goto :goto_10

    :cond_24
    move-object/from16 v5, v16

    :goto_10
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/SuspendFunctionTypeUtilKt;->KOTLIN_SUSPEND_BUILT_IN_FUNCTION_FQ_NAME:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {v12, v4}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->createSimpleSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v12

    goto :goto_11

    :cond_25
    invoke-static {v12, v4}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->createSimpleSuspendFunctionType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v12

    :cond_26
    :goto_11
    if-nez v12, :cond_27

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->INCONSISTENT_SUSPEND_FUNCTION:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/String;

    invoke-static {v4, v7, v2, v5}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorTypeWithArguments(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v2

    goto :goto_12

    :cond_27
    move-object v2, v12

    goto :goto_12

    :cond_28
    iget-boolean v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->nullable_:Z

    invoke-static {v7, v8, v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->simpleType$default(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->DEFINITELY_NOT_NULL_TYPE:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;

    iget v5, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flags_:I

    invoke-virtual {v4, v5}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v9, 0x1

    invoke-static {v2, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->makeDefinitelyNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Z)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    move-result-object v4

    if-eqz v4, :cond_29

    move-object v2, v4

    goto :goto_12

    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "null DefinitelyNotNullType for \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_12
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit16 v5, v4, 0x400

    const/16 v6, 0x400

    if-ne v5, v6, :cond_2b

    iget-object v12, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->abbreviatedType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_13

    :cond_2b
    const/16 v5, 0x800

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2c

    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->abbreviatedTypeId_:I

    invoke-virtual {v3, v1}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v12

    goto :goto_13

    :cond_2c
    move-object/from16 v12, v16

    :goto_13
    if-eqz v12, :cond_2d

    const/4 v9, 0x0

    invoke-virtual {v0, v12, v9}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0

    :cond_2d
    return-object v2
.end method

.method public stopAudioLensSwitch()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->onStatus(I)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioManager;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "audio_radar=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AudioLensSwitchHelper"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    iput-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ". Child of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    const-string/jumbo v1, "proto"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget v2, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleTypeCapabilitiesId_:I

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iget v5, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->bitField0_:I

    and-int/lit8 v6, v5, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleUpperBound_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    goto :goto_0

    :cond_0
    const/16 v6, 0x8

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    iget v5, p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->flexibleUpperBoundId_:I

    invoke-virtual {v4, v5}, Landroidx/media3/extractor/text/cea/CeaSubtitle;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v3}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->flexibleTypeDeserializer:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;

    invoke-interface {v0, p1, v1, v2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/FlexibleTypeDeserializer;->create(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->simpleType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public visit(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    invoke-static {v0, p1, p2}, Lcom/motorola/camera/fsm/Fsm;->access$createConstant(Lcom/motorola/camera/fsm/Fsm;Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;

    move-result-object p2

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public visitAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArgumentVisitor;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/Fsm;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;->NO_SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    invoke-virtual {v1, p1, v2, v0}, Lcom/motorola/camera/fsm/Fsm;->loadAnnotation(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;Ljava/util/List;)Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/AppFeatures;

    invoke-direct {v1, p1, p0, p2, v0}, Lcom/motorola/camera/AppFeatures;-><init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;Lcom/motorola/camera/utility/AudioLensSwitchHelper;Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public visitArray(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
    .locals 2

    new-instance v0, Landroidx/media3/extractor/text/pgs/PgsParser;

    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/Fsm;

    invoke-direct {v0, v1, p1, p0}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Lcom/motorola/camera/fsm/Fsm;Lkotlin/reflect/jvm/internal/impl/name/Name;Lcom/motorola/camera/utility/AudioLensSwitchHelper;)V

    return-object v0
.end method

.method public visitClassLiteral(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    invoke-direct {v1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public visitEnd()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarMangerInstance:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/Fsm;

    iget-object v1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mRegisterCallback:Ljava/lang/Object;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    iget-object v2, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "arguments"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/SpecialJvmAnnotations;->JAVA_LANG_ANNOTATION_REPEATABLE:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "value"

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue;

    goto :goto_0

    :cond_1
    move-object v3, v6

    :goto_0
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    instance-of v5, v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    if-eqz v5, :cond_3

    move-object v6, v3

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;

    :cond_3
    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v6, Lkotlin/reflect/jvm/internal/impl/resolve/constants/KClassValue$Value$NormalClass;->value:Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ClassLiteralValue;->classId:Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/Fsm;->isImplicitRepeatableContainer(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/Fsm;->isImplicitRepeatableContainer(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    return-void

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->munRegisterCallback:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;

    iget-object v3, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mProxy:Ljava/lang/Object;

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;

    invoke-direct {v1, v3, v2, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitEnum(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;

    invoke-direct {v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/EnumValue;-><init>(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioRadarManager:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
