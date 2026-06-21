.class public final synthetic Le/J0$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Le/J0;


# direct methods
.method public synthetic constructor <init>(Le/J0;I)V
    .locals 0

    iput p2, p0, Le/J0$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Le/J0$$ExternalSyntheticLambda0;->f$0:Le/J0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le/J0$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Le/J0$$ExternalSyntheticLambda0;->f$0:Le/J0;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Le/J0;->h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Le/J0;->h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Le/J0;->h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Le/e;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
