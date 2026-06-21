.class public final synthetic Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/google/android/gms/tasks/zzad;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/zzad;I)V
    .locals 0

    iput p2, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/gms/tasks/zzad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Landroidx/work/impl/model/RawWorkInfoDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/gms/tasks/zzad;

    check-cast p1, Ljava/util/HashMap;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzad;->__fetchRelationshipWorkProgressAsandroidxWorkData(Ljava/util/HashMap;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzad;->__fetchRelationshipWorkTagAsjavaLangString(Ljava/util/HashMap;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
