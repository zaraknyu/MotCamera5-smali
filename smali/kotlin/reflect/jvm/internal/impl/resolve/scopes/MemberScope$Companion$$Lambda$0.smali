.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

.field public static final INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

.field public static final INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

.field public static final INSTANCE$3:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;->INSTANCE$2:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;->INSTANCE$3:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Companion$$Lambda$0;->$r8$classId:I

    const-string v0, "$this$selectMostSpecificInEachOverridableGroup"

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
