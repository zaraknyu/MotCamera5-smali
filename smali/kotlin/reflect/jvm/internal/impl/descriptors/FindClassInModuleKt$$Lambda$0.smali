.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

.field public static final INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

.field public static final INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

.field public static final INSTANCE$3:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;->INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;->INSTANCE$3:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$$Lambda$0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    const-string p1, "getTypeParameters(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/TakeWhileSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;

    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageFragmentDescriptorImpl;->fqName:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-object p0

    :pswitch_2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
