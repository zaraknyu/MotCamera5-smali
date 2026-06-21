.class public final Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$$Lambda$0;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Z)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$$Lambda$0;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$$Lambda$0;->$r8$classId:I

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner$Default;

    packed-switch v0, :pswitch_data_0

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo v0, "refiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
