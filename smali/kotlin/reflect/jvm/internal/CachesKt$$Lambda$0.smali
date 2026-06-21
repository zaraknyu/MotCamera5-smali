.class public final Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

.field public static final INSTANCE$1:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

.field public static final INSTANCE$2:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

.field public static final INSTANCE$3:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

.field public static final INSTANCE$4:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

.field public static final INSTANCE$5:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

.field public static final INSTANCE$6:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

.field public static final INSTANCE$7:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

.field public static final INSTANCE$8:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$1:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$2:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$3:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$4:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$5:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$6:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$7:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->INSTANCE$8:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->$r8$classId:I

    const-string v0, "it"

    const-string v1, " | "

    const-string v2, "descriptor"

    const-string v3, "getType(...)"

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    sget-object p0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->renderer:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->renderType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    sget-object p0, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->renderer:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ReflectionObjectRenderer;->renderType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;

    sget-object p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->LOCAL_PROPERTY_SIGNATURE:Lkotlin/text/Regex;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->DEBUG_TEXT:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->render(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapSignature(Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;)Lkotlin/reflect/jvm/internal/JvmFunctionSignature;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/JvmFunctionSignature;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    sget-object p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->LOCAL_PROPERTY_SIGNATURE:Lkotlin/text/Regex;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->DEBUG_TEXT:Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/renderer/DescriptorRendererImpl;->render(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/RuntimeTypeMapper;->mapPropertySignature(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Lcom/motorola/camera/CountryDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/CountryDetector;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "getReturnType(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/Class;

    sget-object p0, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lcom/motorola/camera/CameraKpi;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/reflect/jvm/internal/KPackageImpl;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KPackageImpl;-><init>(Ljava/lang/Class;)V

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/Class;

    sget-object p0, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lcom/motorola/camera/CameraKpi;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/KClassImpl;-><init>(Ljava/lang/Class;)V

    return-object p0

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
