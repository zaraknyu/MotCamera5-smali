.class public final Lkotlin/reflect/jvm/internal/KProperty2Impl$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$0:Lkotlin/reflect/jvm/internal/KProperty2Impl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/KProperty2Impl;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$$Lambda$0;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KProperty2Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$$Lambda$0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KProperty2Impl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->computeDelegateSource()Ljava/lang/reflect/Member;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KProperty2Impl$$Lambda$0;->arg$0:Lkotlin/reflect/jvm/internal/KProperty2Impl;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KProperty2Impl$Getter;-><init>(Lkotlin/reflect/jvm/internal/KProperty2Impl;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
