.class public final Lkotlinx/coroutines/flow/StartedLazily;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlinx/coroutines/flow/StartedLazily;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lkotlinx/coroutines/flow/StartedLazily;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "SharingStarted.Eagerly"

    return-object p0

    :pswitch_0
    const-string p0, "SharingStarted.Lazily"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
