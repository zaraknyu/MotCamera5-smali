.class public final Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;
.super Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;

.field public static final INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;

    const-string v1, "must be a member function"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;

    const-string v1, "must be a member or an extension function"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;->$r8$classId:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final check(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;)Z
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck$Member;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    if-nez p0, :cond_1

    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->extensionReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_0
    iget-object p0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->dispatchReceiverParameter:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
