.class public final Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;

.field public static final INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt$$Lambda$2;->$r8$classId:I

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    packed-switch p0, :pswitch_data_0

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    if-nez p1, :cond_0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz p1, :cond_2

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
