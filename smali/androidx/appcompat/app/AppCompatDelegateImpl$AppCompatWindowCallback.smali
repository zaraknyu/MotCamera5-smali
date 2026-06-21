.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public mDispatchKeyEventBypassEnabled:Z

.field public mOnContentChangedBypassEnabled:Z

.field public mOnPanelClosedBypassEnabled:Z

.field public final mWrapped:Landroid/view/Window$Callback;

.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/view/Window$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Window callback may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final bypassOnContentChanged(Landroid/view/Window$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mOnContentChangedBypassEnabled:Z

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mOnContentChangedBypassEnabled:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mOnContentChangedBypassEnabled:Z

    throw p1
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mDispatchKeyEventBypassEnabled:Z

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-nez v2, :cond_1

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    iget-object v2, v2, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v4

    if-eq v4, v1, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->setQwertyMode(Z)V

    invoke-virtual {v2, v0, p1, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    move p0, v1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v0, v2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->performPanelShortcut(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-eqz p0, :cond_3

    iput-boolean v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isHandled:Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mPreparedPanel:Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    if-nez v0, :cond_6

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->preparePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v0, v2, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->performPanelShortcut(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;ILandroid/view/KeyEvent;)Z

    move-result p0

    iput-boolean v3, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isPrepared:Z

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move p0, v3

    :goto_3
    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    return v3

    :cond_8
    :goto_4
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mOnContentChangedBypassEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    instance-of v0, p2, Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->onMenuOpened$androidx$appcompat$view$WindowCallbackWrapper(ILandroid/view/Menu;)Z

    const/16 p2, 0x6c

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    if-eqz p0, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    iget-boolean p2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final onMenuOpened$androidx$appcompat$view$WindowCallbackWrapper(ILandroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mOnPanelClosedBypassEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->onPanelClosed$androidx$appcompat$view$WindowCallbackWrapper(ILandroid/view/Menu;)V

    const/16 p2, 0x6c

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    if-eqz p0, :cond_4

    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    iget-boolean p2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object p1

    iget-boolean p2, p1, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->isOpen:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->closePanel(Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onPanelClosed$androidx$appcompat$view$WindowCallbackWrapper(ILandroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-static {p0, p1}, Landroidx/appcompat/view/WindowCallbackWrapper$Api26Impl;->onPointerCaptureChanged(Landroid/view/Window$Callback;Z)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    instance-of v0, p3, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    if-eqz v0, :cond_3

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    :cond_3
    return p0
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl;->getPanelState(I)Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;

    move-result-object v0

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->onProvideKeyboardShortcuts$androidx$appcompat$view$WindowCallbackWrapper(Ljava/util/List;Landroid/view/Menu;I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->onProvideKeyboardShortcuts$androidx$appcompat$view$WindowCallbackWrapper(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final onProvideKeyboardShortcuts$androidx$appcompat$view$WindowCallbackWrapper(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-static {p0, p1, p2, p3}, Landroidx/appcompat/view/WindowCallbackWrapper$Api24Impl;->onProvideKeyboardShortcuts(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final onSearchRequested()Z
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result p0

    return p0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-static {p0, p1}, Landroidx/appcompat/view/WindowCallbackWrapper$Api23Impl;->onSearchRequested(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p0

    return p0
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-interface {p0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 8

    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->mWrapped:Landroid/view/Window$Callback;

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/WindowCallbackWrapper$Api23Impl;->onWindowStartingActionMode(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p2, Landroidx/work/WorkQuery;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AppCompatWindowCallback;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p2, Landroidx/work/WorkQuery;->tags:Ljava/lang/Object;

    .line 6
    iput-object p1, p2, Landroidx/work/WorkQuery;->uniqueWorkNames:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, Landroidx/work/WorkQuery;->ids:Ljava/lang/Object;

    .line 8
    new-instance p1, Landroidx/collection/SimpleArrayMap;

    const/4 v1, 0x0

    .line 9
    invoke-direct {p1, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 10
    iput-object p1, p2, Landroidx/work/WorkQuery;->states:Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 13
    :cond_1
    new-instance p1, Lcom/tinder/StateMachine;

    invoke-direct {p1, p0, p2}, Lcom/tinder/StateMachine;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/work/WorkQuery;)V

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 15
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 16
    iget-object v5, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v5, :cond_2

    .line 17
    invoke-virtual {v5}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 18
    :cond_2
    iget-object v5, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 19
    iget-object v5, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 20
    new-instance v5, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v6, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v2, v6, p1}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;Landroid/content/Context;Lcom/tinder/StateMachine;)V

    .line 21
    iget-object v6, v5, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 22
    :try_start_0
    iget-object v7, v5, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/tinder/StateMachine;

    .line 23
    iget-object v7, v7, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v7, Landroidx/work/WorkQuery;

    invoke-virtual {v7, v5, v6}, Landroidx/work/WorkQuery;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v7, :cond_3

    .line 25
    iput-object v5, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    .line 26
    invoke-virtual {v5}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 27
    iget-object v6, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v5}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Landroidx/appcompat/view/ActionMode;)V

    .line 28
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/WindowDecorActionBar;->animateToMode(Z)V

    goto :goto_0

    :cond_3
    move-object v5, v4

    .line 29
    :goto_0
    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 30
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 31
    throw p0

    .line 32
    :cond_4
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-nez v2, :cond_11

    .line 33
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v2, :cond_5

    .line 34
    invoke-virtual {v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 35
    :cond_5
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz v2, :cond_6

    .line 36
    invoke-virtual {v2}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 37
    :cond_6
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    if-nez v2, :cond_b

    .line 38
    iget-boolean v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mIsFloating:Z

    if-eqz v2, :cond_8

    .line 39
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f04000b

    .line 41
    invoke-virtual {v5, v6, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 42
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_7

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 44
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 45
    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v5, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 46
    new-instance v5, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v5, v0, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 47
    invoke-virtual {v5}, Landroidx/appcompat/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v5

    .line 48
    :cond_7
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    .line 49
    invoke-direct {v5, v0, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    .line 51
    new-instance v5, Landroid/widget/PopupWindow;

    const v6, 0x7f04001a

    invoke-direct {v5, v0, v4, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 52
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 53
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 54
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f040005

    invoke-virtual {v5, v6, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 56
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 58
    invoke-static {v2, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 59
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 60
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 61
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    invoke-direct {v0, p0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$2;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;I)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    goto :goto_4

    .line 62
    :cond_8
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    const v5, 0x7f0a004d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v2, :cond_b

    .line 63
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->initWindowDecorActionBar()V

    .line 64
    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionBar:Landroidx/appcompat/app/WindowDecorActionBar;

    if-eqz v5, :cond_9

    .line 65
    invoke-virtual {v5}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_2

    :cond_9
    move-object v5, v4

    :goto_2
    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    move-object v0, v5

    .line 66
    :goto_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 67
    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    .line 68
    :cond_b
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_10

    .line 69
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_c

    .line 70
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 71
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 72
    new-instance v0, Landroidx/appcompat/view/StandaloneActionMode;

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    .line 73
    invoke-direct {v0}, Landroidx/appcompat/view/ActionMode;-><init>()V

    .line 74
    iput-object v2, v0, Landroidx/appcompat/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    .line 75
    iput-object v5, v0, Landroidx/appcompat/view/StandaloneActionMode;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    .line 76
    iput-object p1, v0, Landroidx/appcompat/view/StandaloneActionMode;->mCallback:Lcom/tinder/StateMachine;

    .line 77
    new-instance v2, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 78
    iput v3, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 79
    iput-object v2, v0, Landroidx/appcompat/view/StandaloneActionMode;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 80
    iput-object v0, v2, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 81
    iget-object p1, p1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast p1, Landroidx/work/WorkQuery;

    .line 82
    invoke-virtual {p1, v0, v2}, Landroidx/work/WorkQuery;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 83
    invoke-virtual {v0}, Landroidx/appcompat/view/StandaloneActionMode;->invalidate()V

    .line 84
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Landroidx/appcompat/view/ActionMode;)V

    .line 85
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    .line 86
    iget-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecorInstalled:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Landroid/view/ViewGroup;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 87
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 88
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 89
    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl$7;

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$7;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)V

    goto :goto_5

    .line 90
    :cond_d
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 91
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_e

    .line 93
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 94
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    .line 95
    :cond_e
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_10

    .line 96
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Landroidx/appcompat/app/AppCompatDelegateImpl$2;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 97
    :cond_f
    iput-object v4, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    .line 98
    :cond_10
    :goto_6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateBackInvokedCallbackState()V

    .line 99
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    .line 100
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    .line 101
    :cond_11
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->updateBackInvokedCallbackState()V

    .line 102
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Landroidx/appcompat/view/ActionMode;

    if-eqz p0, :cond_12

    .line 103
    invoke-virtual {p2, p0}, Landroidx/work/WorkQuery;->getActionModeWrapper(Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/SupportActionModeWrapper;

    move-result-object p0

    return-object p0

    :cond_12
    return-object v4
.end method
