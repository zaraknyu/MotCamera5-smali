.class public final Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final done()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final start()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
