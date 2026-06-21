.class public final Lkotlin/sequences/TakeWhileSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final synthetic $r8$classId:I

.field public final sequence:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/sequences/TakeWhileSequence;->$r8$classId:I

    iput-object p2, p0, Lkotlin/sequences/TakeWhileSequence;->sequence:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlin/sequences/TakeWhileSequence;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    check-cast p1, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;

    iput-object p1, p0, Lkotlin/sequences/TakeWhileSequence;->sequence:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lkotlin/sequences/TakeWhileSequence;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/text/LinesIterator;

    iget-object p0, p0, Lkotlin/sequences/TakeWhileSequence;->sequence:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-direct {v0, p0}, Lkotlin/text/LinesIterator;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lkotlin/sequences/TakeWhileSequence;->sequence:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lkotlin/sequences/TakeWhileSequence;->sequence:Ljava/lang/Object;

    check-cast p0, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lkotlin/sequences/TakeWhileSequence;->sequence:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lkotlin/sequences/TakeWhileSequence;->sequence:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->iterator([Ljava/lang/Object;)Lkotlin/UIntArray$Iterator;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance v0, Lkotlin/sequences/GeneratorSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/GeneratorSequence$iterator$1;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
