.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;->arg$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;->arg$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->typeTable:Landroidx/media3/extractor/text/cea/CeaSubtitle;

    invoke-static {p1, p0}, Landroidx/compose/runtime/saveable/ListSaverKt;->outerType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;Landroidx/media3/extractor/text/cea/CeaSubtitle;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;->arg$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    invoke-static {v0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    iget-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isLocal:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->findClassifierAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    if-eqz p1, :cond_1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/TypeDeserializer$$Lambda$0;->arg$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioManager:Ljava/lang/Object;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->nameResolver:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->components:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    invoke-static {v0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->getClassId(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;I)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object p1

    iget-boolean v0, p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->isLocal:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->deserializeClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->moduleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorUtilKt;->findClassifierAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
