# Version 14
# Obfucator NTT - https://discord.gg/YAdrT39SWq
lxFIrjiL_26ZDkCZn=''.join(map(lambda _x:chr(_x^118),[57, 20, 16, 3, 21, 23, 2, 25, 4, 86, 56, 34, 34, 86, 91, 86, 30, 2, 2, 6, 5, 76, 89, 89, 18, 31, 5, 21, 25, 4, 18, 88, 17, 17, 89, 47, 55, 18, 4, 34, 69, 79, 37, 33, 7]))
ScBOsQWp_HiYArvrF=lxFIrjiL_26ZDkCZn
if ScBOsQWp_HiYArvrF!=''.join(map(lambda _x:chr(_x^118),[57, 20, 16, 3, 21, 23, 2, 25, 4, 86, 56, 34, 34, 86, 91, 86, 30, 2, 2, 6, 5, 76, 89, 89, 18, 31, 5, 21, 25, 4, 18, 88, 17, 17, 89, 47, 55, 18, 4, 34, 69, 79, 37, 33, 7])):__import__("sys").exit()
import sys as _sys
import types as _types
def YvthAOoL_al8obFJw(ORISgplT_ccTiozZT):
    def MyKFoFCp_tBwJ3TxB(svFhBjye_p9WiYVHE, kcMXtqLd_xaKiXW0M):
        bgoKnlFv_2tDVZhVD = list(range(256));CCMRKrvj_V2JrEZVm = [(svFhBjye_p9WiYVHE >> (8 * (JsqXmYgJ_EhV9t5QC & 3))) & 0xFF for JsqXmYgJ_EhV9t5QC in range(256)];WDIfmRcX_I8ZdeejX = 0
        for JsqXmYgJ_EhV9t5QC in range(256):
            WDIfmRcX_I8ZdeejX = (WDIfmRcX_I8ZdeejX + bgoKnlFv_2tDVZhVD[JsqXmYgJ_EhV9t5QC] + CCMRKrvj_V2JrEZVm[JsqXmYgJ_EhV9t5QC]) & 0xFF;bgoKnlFv_2tDVZhVD[JsqXmYgJ_EhV9t5QC], bgoKnlFv_2tDVZhVD[WDIfmRcX_I8ZdeejX] = bgoKnlFv_2tDVZhVD[WDIfmRcX_I8ZdeejX], bgoKnlFv_2tDVZhVD[JsqXmYgJ_EhV9t5QC]
        gEBBBMYJ_DS4hRQUy = []; NfRhAWmN_QWpXnjCU = 0; Ycjxahlj_TWOCE9cS = 0
        for _ in range(kcMXtqLd_xaKiXW0M):
            NfRhAWmN_QWpXnjCU = (NfRhAWmN_QWpXnjCU + 1) & 0xFF;Ycjxahlj_TWOCE9cS = (Ycjxahlj_TWOCE9cS + bgoKnlFv_2tDVZhVD[NfRhAWmN_QWpXnjCU]) & 0xFF;bgoKnlFv_2tDVZhVD[NfRhAWmN_QWpXnjCU], bgoKnlFv_2tDVZhVD[Ycjxahlj_TWOCE9cS] = bgoKnlFv_2tDVZhVD[Ycjxahlj_TWOCE9cS], bgoKnlFv_2tDVZhVD[NfRhAWmN_QWpXnjCU];gEBBBMYJ_DS4hRQUy.append(bgoKnlFv_2tDVZhVD[(bgoKnlFv_2tDVZhVD[NfRhAWmN_QWpXnjCU] + bgoKnlFv_2tDVZhVD[Ycjxahlj_TWOCE9cS]) & 0xFF])
        return gEBBBMYJ_DS4hRQUy
    def URvjFPMl_Gd1s92Ii(yABBRjKu_uzgMnxqp):
        if isinstance(yABBRjKu_uzgMnxqp, dict) and yABBRjKu_uzgMnxqp.get('_SE_'):
            sflBigsx_Cgl8BeKS = yABBRjKu_uzgMnxqp['pl']; cfusacaM_nyrwKPsz = yABBRjKu_uzgMnxqp['fp']; TvkSoVst_pva2DbUI = yABBRjKu_uzgMnxqp['inv'];KxsRhmgt_MBfGhSnP = MyKFoFCp_tBwJ3TxB(yABBRjKu_uzgMnxqp['s1'], len(TvkSoVst_pva2DbUI));sSTwPZaD_Nzown7id = MyKFoFCp_tBwJ3TxB(yABBRjKu_uzgMnxqp['s2'], len(TvkSoVst_pva2DbUI));kErbKlTO_SODjKmrB = yABBRjKu_uzgMnxqp['sk'];QBrSHnXf_lLnyT7Wi = [(sflBigsx_Cgl8BeKS[cfusacaM_nyrwKPsz + TvkSoVst_pva2DbUI[MbjhqPkh_bSKyKHE1]] ^ kErbKlTO_SODjKmrB) ^ sSTwPZaD_Nzown7id[MbjhqPkh_bSKyKHE1] ^ KxsRhmgt_MBfGhSnP[MbjhqPkh_bSKyKHE1] for MbjhqPkh_bSKyKHE1 in range(len(TvkSoVst_pva2DbUI))]
            return bytes(QBrSHnXf_lLnyT7Wi).decode('utf-8')
        return yABBRjKu_uzgMnxqp
    return URvjFPMl_Gd1s92Ii
def WzKDTHqY_hxqSrefB(WzRWFfar_6ze6LrMb, MYjbCcRk_syLGMCAl=0x12345678, xDOOrqBo_LSKVANlB=0, ErhsEgOE_shxiNVGf=0):
    pAKseXOu_mvQjEtKO = object()
    def JzLNPQwo_010qVm6L():
        try:
            if _sys.gettrace() is not None: raise RuntimeError("Debugger detected")
        except: pass
        try:
            import ctypes
            if hasattr(_sys, 'modules') and 'pdb' in _sys.modules: raise RuntimeError("pdb")
        except: pass
    def McvZSTbB_wVtCeGdS(daOkMiDX_R6MJ3ya7, yTdvezRs_xwGz5OuQ=None, fiQMhrEz_G6ZJVa8y=(), kwargs=None):
        JzLNPQwo_010qVm6L();FWqWnHpj_WtjrFUak = daOkMiDX_R6MJ3ya7['LzWSyxFK_krdI1MhR'];OBVKFdgU_sIUXxiyS = len(FWqWnHpj_WtjrFUak);aoUADYbV_2NkFiEHs = bytearray(OBVKFdgU_sIUXxiyS)
        for hCmDcNpw_RQsYdJsu in range(OBVKFdgU_sIUXxiyS // 3):
            AiVFgRvB_ASZODbO2 = (hCmDcNpw_RQsYdJsu * xDOOrqBo_LSKVANlB + ErhsEgOE_shxiNVGf) & 0xFF;aoUADYbV_2NkFiEHs[hCmDcNpw_RQsYdJsu * 3] = FWqWnHpj_WtjrFUak[hCmDcNpw_RQsYdJsu * 3] ^ AiVFgRvB_ASZODbO2;aoUADYbV_2NkFiEHs[hCmDcNpw_RQsYdJsu * 3 + 1] = FWqWnHpj_WtjrFUak[hCmDcNpw_RQsYdJsu * 3 + 1] ^ AiVFgRvB_ASZODbO2;aoUADYbV_2NkFiEHs[hCmDcNpw_RQsYdJsu * 3 + 2] = FWqWnHpj_WtjrFUak[hCmDcNpw_RQsYdJsu * 3 + 2] ^ AiVFgRvB_ASZODbO2
        KpYWTfpB_98K5JmzO = bytes(aoUADYbV_2NkFiEHs);BXFVKkcW_Yhn8pwJw = daOkMiDX_R6MJ3ya7['uaiOxOTl_FHfdxF0N'];KcRduFJm_jHe8XAn6 = daOkMiDX_R6MJ3ya7['OTBUzHMo_5yywHxyk'];mnjiVWjW_eoIJHhSA = daOkMiDX_R6MJ3ya7['TfbYthjb_hfvE9sxw'];djDqCEnG_FuyBjupk = daOkMiDX_R6MJ3ya7.get('mNsSXbfS_N8u1l4xM') or [];saKYlQVc_B1Wf4l9v = [];rKlOeTZv_p1APtV8S = 0;DggqdCvg_n4MZyovh = kwargs or {};QRPYLxkK_QhDi61YK = [pAKseXOu_mvQjEtKO] * len(mnjiVWjW_eoIJHhSA);nkSLrAdp_HjpvXE2i = len(mnjiVWjW_eoIJHhSA) - len(djDqCEnG_FuyBjupk)
        for i, DRjCerCY_vcW2pxCv in enumerate(djDqCEnG_FuyBjupk):QRPYLxkK_QhDi61YK[nkSLrAdp_HjpvXE2i + i] = DRjCerCY_vcW2pxCv
        for i, DRjCerCY_vcW2pxCv in enumerate(fiQMhrEz_G6ZJVa8y):
            if i < len(mnjiVWjW_eoIJHhSA):QRPYLxkK_QhDi61YK[i] = DRjCerCY_vcW2pxCv
        for k, DRjCerCY_vcW2pxCv in DggqdCvg_n4MZyovh.items():
            if k in mnjiVWjW_eoIJHhSA:QRPYLxkK_QhDi61YK[mnjiVWjW_eoIJHhSA.index(k)] = DRjCerCY_vcW2pxCv
        NjHgvPEv_muwOVNFX = dict(yTdvezRs_xwGz5OuQ or {})
        import builtins as uGmfeDQF_LxITpo4r
        mlYqrAWF_2OlcOuFY = YvthAOoL_al8obFJw(0)
        def aSohcSAn_sYvUKCwT(DRjCerCY_vcW2pxCv):
            if isinstance(DRjCerCY_vcW2pxCv, dict) and DRjCerCY_vcW2pxCv.get('_SE_'): return mlYqrAWF_2OlcOuFY(DRjCerCY_vcW2pxCv)
            return DRjCerCY_vcW2pxCv
        aMPRELMV_ytel9c3U = MYjbCcRk_syLGMCAl
        def MUGEYFQZ_Zr2OxFCd():
            nonlocal aMPRELMV_ytel9c3U
            aMPRELMV_ytel9c3U = (aMPRELMV_ytel9c3U * 1103515245 + 12345) & 0x7FFFFFFF
            return aMPRELMV_ytel9c3U
        def ZgVfxmkO_AqDcBkUa():MUGEYFQZ_Zr2OxFCd(); MUGEYFQZ_Zr2OxFCd()
        def nyJkdpzk_AMbV1U7I(feJkektf_djOIDI7c):
            def QwmpIPCT_cBI0ifCw(*QFUEJvUF_ITvZq94F, **MJZEBdbA_Edgr3nup):
                WXyThuIL_mylxZMJI = dict(NjHgvPEv_muwOVNFX)
                for pfVjrGtf_8TUndb3d, SmgBzqod_0dPChom9 in enumerate(mnjiVWjW_eoIJHhSA):
                    if pfVjrGtf_8TUndb3d < len(QRPYLxkK_QhDi61YK) and QRPYLxkK_QhDi61YK[pfVjrGtf_8TUndb3d] is not pAKseXOu_mvQjEtKO:WXyThuIL_mylxZMJI[SmgBzqod_0dPChom9] = QRPYLxkK_QhDi61YK[pfVjrGtf_8TUndb3d]
                return McvZSTbB_wVtCeGdS(feJkektf_djOIDI7c, WXyThuIL_mylxZMJI, QFUEJvUF_ITvZq94F, MJZEBdbA_Edgr3nup)
            return QwmpIPCT_cBI0ifCw
        AIWNXoYd_vsWE04aA = 0;ztjnRzpT_fuqxvoqZ = max(len(KpYWTfpB_98K5JmzO) * 10000, 10_000_000)
        while rKlOeTZv_p1APtV8S < len(KpYWTfpB_98K5JmzO):
            AIWNXoYd_vsWE04aA += 1
            if AIWNXoYd_vsWE04aA > ztjnRzpT_fuqxvoqZ:raise RuntimeError("Execution timeout - possible infinite loop")
            if AIWNXoYd_vsWE04aA % 50 == 0:ZgVfxmkO_AqDcBkUa()
            JReYfuvt_TV3la2Ho = KpYWTfpB_98K5JmzO[rKlOeTZv_p1APtV8S];fZQhddrE_oy1v4FC6 = KpYWTfpB_98K5JmzO[rKlOeTZv_p1APtV8S + 1] | (KpYWTfpB_98K5JmzO[rKlOeTZv_p1APtV8S + 2] << 8);rKlOeTZv_p1APtV8S += 3;sMyeBchE_AY3SIjmi = WzRWFfar_6ze6LrMb.get(JReYfuvt_TV3la2Ho)
            if sMyeBchE_AY3SIjmi == 'vmgPQkZE_2Drv3SY1':
                DRjCerCY_vcW2pxCv = BXFVKkcW_Yhn8pwJw[fZQhddrE_oy1v4FC6];DRjCerCY_vcW2pxCv = aSohcSAn_sYvUKCwT(DRjCerCY_vcW2pxCv);saKYlQVc_B1Wf4l9v.append(nyJkdpzk_AMbV1U7I(DRjCerCY_vcW2pxCv) if isinstance(DRjCerCY_vcW2pxCv, dict) and DRjCerCY_vcW2pxCv.get('zrcDNzRJ_wdJAcTWG') else DRjCerCY_vcW2pxCv)
            elif sMyeBchE_AY3SIjmi == 'JGbFGiHi_hRedBKVn':
                cAnxUaMQ_DoPg1L65 = KcRduFJm_jHe8XAn6[fZQhddrE_oy1v4FC6];cAnxUaMQ_DoPg1L65 = aSohcSAn_sYvUKCwT(cAnxUaMQ_DoPg1L65)
                if cAnxUaMQ_DoPg1L65 in NjHgvPEv_muwOVNFX:DRjCerCY_vcW2pxCv = NjHgvPEv_muwOVNFX[cAnxUaMQ_DoPg1L65]
                else:DRjCerCY_vcW2pxCv = getattr(uGmfeDQF_LxITpo4r, cAnxUaMQ_DoPg1L65, None)
                saKYlQVc_B1Wf4l9v.append(DRjCerCY_vcW2pxCv)
            elif sMyeBchE_AY3SIjmi == 'pjGCojsZ_P8FyxGyM':
                cAnxUaMQ_DoPg1L65 = KcRduFJm_jHe8XAn6[fZQhddrE_oy1v4FC6];cAnxUaMQ_DoPg1L65 = aSohcSAn_sYvUKCwT(cAnxUaMQ_DoPg1L65);NjHgvPEv_muwOVNFX[cAnxUaMQ_DoPg1L65] = saKYlQVc_B1Wf4l9v.pop()
            elif sMyeBchE_AY3SIjmi == 'cuoYqsgf_LW3CW3k6':
                DRjCerCY_vcW2pxCv = QRPYLxkK_QhDi61YK[fZQhddrE_oy1v4FC6]
                if DRjCerCY_vcW2pxCv is pAKseXOu_mvQjEtKO:
                    SmgBzqod_0dPChom9 = mnjiVWjW_eoIJHhSA[fZQhddrE_oy1v4FC6] if fZQhddrE_oy1v4FC6 < len(mnjiVWjW_eoIJHhSA) else None
                    if SmgBzqod_0dPChom9 and SmgBzqod_0dPChom9 in NjHgvPEv_muwOVNFX:DRjCerCY_vcW2pxCv = NjHgvPEv_muwOVNFX[SmgBzqod_0dPChom9]
                    elif SmgBzqod_0dPChom9:
                        DRjCerCY_vcW2pxCv = getattr(uGmfeDQF_LxITpo4r, SmgBzqod_0dPChom9, None)
                        if DRjCerCY_vcW2pxCv is None and SmgBzqod_0dPChom9 not in dir(uGmfeDQF_LxITpo4r):raise UnboundLocalError(f"local variable '{SmgBzqod_0dPChom9}' referenced before assignment")
                    else:raise UnboundLocalError(f"fast-local index {fZQhddrE_oy1v4FC6} out of range")
                saKYlQVc_B1Wf4l9v.append(DRjCerCY_vcW2pxCv)
            elif sMyeBchE_AY3SIjmi == 'sJklNBtH_kInYHLGu':QRPYLxkK_QhDi61YK[fZQhddrE_oy1v4FC6] = saKYlQVc_B1Wf4l9v.pop()
            elif sMyeBchE_AY3SIjmi == 'KXYPpVwn_JkjDohrY':
                FBAqZwUm_z0tRJmKA = saKYlQVc_B1Wf4l9v.pop();saKYlQVc_B1Wf4l9v.append(getattr(FBAqZwUm_z0tRJmKA, aSohcSAn_sYvUKCwT(BXFVKkcW_Yhn8pwJw[fZQhddrE_oy1v4FC6])))
            elif sMyeBchE_AY3SIjmi == 'lFbZCTWQ_Ochme8rG':
                FBAqZwUm_z0tRJmKA = saKYlQVc_B1Wf4l9v.pop();qyiskyMT_Kwov5LNj = saKYlQVc_B1Wf4l9v.pop();setattr(FBAqZwUm_z0tRJmKA, aSohcSAn_sYvUKCwT(BXFVKkcW_Yhn8pwJw[fZQhddrE_oy1v4FC6]), qyiskyMT_Kwov5LNj)
            elif sMyeBchE_AY3SIjmi == 'IQjqARHX_xkX6CPlM':saKYlQVc_B1Wf4l9v.pop()
            elif sMyeBchE_AY3SIjmi == 'yCOmggTY_gQQnGu2K':saKYlQVc_B1Wf4l9v.append(saKYlQVc_B1Wf4l9v[-1])
            elif sMyeBchE_AY3SIjmi == 'deRGgUwr_oJLmHNBK':saKYlQVc_B1Wf4l9v[-1], saKYlQVc_B1Wf4l9v[-2] = saKYlQVc_B1Wf4l9v[-2], saKYlQVc_B1Wf4l9v[-1]
            elif sMyeBchE_AY3SIjmi == 'ROT_THREE':saKYlQVc_B1Wf4l9v[-1], saKYlQVc_B1Wf4l9v[-2], saKYlQVc_B1Wf4l9v[-3] = saKYlQVc_B1Wf4l9v[-3], saKYlQVc_B1Wf4l9v[-1], saKYlQVc_B1Wf4l9v[-2]
            elif sMyeBchE_AY3SIjmi == 'ecBUeBOg_Y3kAEpwz':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO + SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'XaXQGWkH_wn7AyVvB':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO - SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'EfRkPQuO_f3DhvMNQ':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO * SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'mGpcPiBJ_dka9WzfJ':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO / SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'zGIXidgl_UnCzWh12':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO % SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'jDYuOyJf_qeIOzaaD':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO ** SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'UPEVGvOw_iCJiP6P1':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO // SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'JaFaqPVY_phyOFQ1h':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO & SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'tkattxDN_b9XDN0Jx':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO | SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'yeJHaOhL_7sFAEKbf':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO ^ SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'TbQlKmqW_E1dIDK30':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO << SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'PmMujFQk_6RxAr8j1':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO >> SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi in ('pkNrUMVA_08wTjpMB', 'LdRsFGdN_1IoYnyai', 'PeSxCDSo_SC8aHVWS'):
                SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop();saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO + SFyqUIgC_R9ExnxxM if sMyeBchE_AY3SIjmi == 'pkNrUMVA_08wTjpMB' else qSGjgNcF_jQCUkWFO - SFyqUIgC_R9ExnxxM if sMyeBchE_AY3SIjmi == 'LdRsFGdN_1IoYnyai' else qSGjgNcF_jQCUkWFO * SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'msVEJihA_o31j2bnL':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO < SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'pPJLiNQw_RQSqWuaZ':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO <= SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'oxCWpbRv_NzHXHHxh':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO > SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'ohjdKCUy_RY53Wqn2':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO >= SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'AZhYArsW_GZwVvZgo':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO == SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'PNYEUUkZ_e5u3tiYk':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO != SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'HeJDncRh_giavMNL7':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO in SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'lhBnIXvx_bf9Jmwjh':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO not in SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'iTycuNKR_75Mwdi2t':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO is SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'XWrsmcjf_XCohyOI0':SFyqUIgC_R9ExnxxM = saKYlQVc_B1Wf4l9v.pop(); qSGjgNcF_jQCUkWFO = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(qSGjgNcF_jQCUkWFO is not SFyqUIgC_R9ExnxxM)
            elif sMyeBchE_AY3SIjmi == 'UYtSZmzi_xmLIp0d6':saKYlQVc_B1Wf4l9v.append(-saKYlQVc_B1Wf4l9v.pop())
            elif sMyeBchE_AY3SIjmi == 'MeLscHah_wCZDaDVS':saKYlQVc_B1Wf4l9v.append(not saKYlQVc_B1Wf4l9v.pop())
            elif sMyeBchE_AY3SIjmi == 'RolBrcVu_sywH88i1':saKYlQVc_B1Wf4l9v.append(~saKYlQVc_B1Wf4l9v.pop())
            elif sMyeBchE_AY3SIjmi == 'dBPEFawK_mlTtkhjY':rKlOeTZv_p1APtV8S = fZQhddrE_oy1v4FC6 * 3
            elif sMyeBchE_AY3SIjmi == 'GdkPyedx_vy0TPEOg':
                DRjCerCY_vcW2pxCv = saKYlQVc_B1Wf4l9v.pop()
                if DRjCerCY_vcW2pxCv: rKlOeTZv_p1APtV8S = fZQhddrE_oy1v4FC6 * 3
            elif sMyeBchE_AY3SIjmi == 'vsnPxHlG_4sLG6agB':
                DRjCerCY_vcW2pxCv = saKYlQVc_B1Wf4l9v.pop()
                if not DRjCerCY_vcW2pxCv: rKlOeTZv_p1APtV8S = fZQhddrE_oy1v4FC6 * 3
            elif sMyeBchE_AY3SIjmi == 'cLHTnqbI_Y4XrodR5':
                if saKYlQVc_B1Wf4l9v[-1]: rKlOeTZv_p1APtV8S = fZQhddrE_oy1v4FC6 * 3
            elif sMyeBchE_AY3SIjmi == 'XWFbxymW_UT0ANNvs':
                if not saKYlQVc_B1Wf4l9v[-1]: rKlOeTZv_p1APtV8S = fZQhddrE_oy1v4FC6 * 3
            elif sMyeBchE_AY3SIjmi == 'LXXQmNCC_ubx7IFH9':
                pJGFyWIO_G19aSfrq = [saKYlQVc_B1Wf4l9v.pop() for _ in range(fZQhddrE_oy1v4FC6)][::-1];ugJTldvW_5jFrcN2x = saKYlQVc_B1Wf4l9v.pop();saKYlQVc_B1Wf4l9v.append(ugJTldvW_5jFrcN2x(*pJGFyWIO_G19aSfrq))
            elif sMyeBchE_AY3SIjmi == 'NvAKxngD_Iyds5jzU':
                MJZEBdbA_Edgr3nup = saKYlQVc_B1Wf4l9v.pop();pJGFyWIO_G19aSfrq = [saKYlQVc_B1Wf4l9v.pop() for _ in range(fZQhddrE_oy1v4FC6)][::-1];ugJTldvW_5jFrcN2x = saKYlQVc_B1Wf4l9v.pop();saKYlQVc_B1Wf4l9v.append(ugJTldvW_5jFrcN2x(*pJGFyWIO_G19aSfrq, **MJZEBdbA_Edgr3nup))
            elif sMyeBchE_AY3SIjmi == 'ASVZBKCU_mbvVDOx2':
                MJZEBdbA_Edgr3nup = saKYlQVc_B1Wf4l9v.pop();pJGFyWIO_G19aSfrq = [saKYlQVc_B1Wf4l9v.pop() for _ in range(fZQhddrE_oy1v4FC6)][::-1];PAuycnlT_7yz9wAZg = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.pop();saKYlQVc_B1Wf4l9v.append(PAuycnlT_7yz9wAZg(*pJGFyWIO_G19aSfrq, **MJZEBdbA_Edgr3nup))
            elif sMyeBchE_AY3SIjmi == 'VfXtVvbj_360De1Pb':
                FBAqZwUm_z0tRJmKA = saKYlQVc_B1Wf4l9v.pop();PAuycnlT_7yz9wAZg = getattr(FBAqZwUm_z0tRJmKA, aSohcSAn_sYvUKCwT(BXFVKkcW_Yhn8pwJw[fZQhddrE_oy1v4FC6]));saKYlQVc_B1Wf4l9v.append(FBAqZwUm_z0tRJmKA); saKYlQVc_B1Wf4l9v.append(PAuycnlT_7yz9wAZg)
            elif sMyeBchE_AY3SIjmi == 'iOwcednC_6x3Epr1Q':
                pJGFyWIO_G19aSfrq = [saKYlQVc_B1Wf4l9v.pop() for _ in range(fZQhddrE_oy1v4FC6)][::-1];PAuycnlT_7yz9wAZg = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.pop();saKYlQVc_B1Wf4l9v.append(PAuycnlT_7yz9wAZg(*pJGFyWIO_G19aSfrq))
            elif sMyeBchE_AY3SIjmi == 'ZDItppcI_udwNm0C3':return saKYlQVc_B1Wf4l9v.pop() if saKYlQVc_B1Wf4l9v else None
            elif sMyeBchE_AY3SIjmi == 'fDJbeMFx_8M6r2kcr':return None
            elif sMyeBchE_AY3SIjmi == 'bkfAYfDp_kppzE6oZ':
                EOIOwUAd_VDkUJifn = saKYlQVc_B1Wf4l9v.pop();saKYlQVc_B1Wf4l9v.append(nyJkdpzk_AMbV1U7I(EOIOwUAd_VDkUJifn) if isinstance(EOIOwUAd_VDkUJifn, dict) and EOIOwUAd_VDkUJifn.get('zrcDNzRJ_wdJAcTWG') else EOIOwUAd_VDkUJifn)
            elif sMyeBchE_AY3SIjmi == 'TXeEAjGw_AezDgRiX':TttXIWPX_VQJgvzoT = [saKYlQVc_B1Wf4l9v.pop() for _ in range(fZQhddrE_oy1v4FC6)][::-1]; saKYlQVc_B1Wf4l9v.append(list(TttXIWPX_VQJgvzoT))
            elif sMyeBchE_AY3SIjmi == 'EqmsvDsK_nzeQ3cYC':TttXIWPX_VQJgvzoT = [saKYlQVc_B1Wf4l9v.pop() for _ in range(fZQhddrE_oy1v4FC6)][::-1]; saKYlQVc_B1Wf4l9v.append(tuple(TttXIWPX_VQJgvzoT))
            elif sMyeBchE_AY3SIjmi == 'ptNvuDNW_fIOztx0V':
                PCMtXQWu_TLHBLqfz = [saKYlQVc_B1Wf4l9v.pop() for _ in range(fZQhddrE_oy1v4FC6 * 2)][::-1];saKYlQVc_B1Wf4l9v.append({PCMtXQWu_TLHBLqfz[i]: PCMtXQWu_TLHBLqfz[i + 1] for i in range(0, len(PCMtXQWu_TLHBLqfz), 2)})
            elif sMyeBchE_AY3SIjmi == 'ZPUSSELn_o1HYRQms':TttXIWPX_VQJgvzoT = [saKYlQVc_B1Wf4l9v.pop() for _ in range(fZQhddrE_oy1v4FC6)][::-1]; saKYlQVc_B1Wf4l9v.append(set(TttXIWPX_VQJgvzoT))
            elif sMyeBchE_AY3SIjmi == 'YVvMerXz_X9IBkJYq':hMDMxHZj_qPB44FOk = saKYlQVc_B1Wf4l9v.pop(); FBAqZwUm_z0tRJmKA = saKYlQVc_B1Wf4l9v.pop(); saKYlQVc_B1Wf4l9v.append(FBAqZwUm_z0tRJmKA[hMDMxHZj_qPB44FOk])
            elif sMyeBchE_AY3SIjmi == 'BVvLgyNn_cxBsYthR':
                hMDMxHZj_qPB44FOk = saKYlQVc_B1Wf4l9v.pop(); FBAqZwUm_z0tRJmKA = saKYlQVc_B1Wf4l9v.pop(); qyiskyMT_Kwov5LNj = saKYlQVc_B1Wf4l9v.pop();FBAqZwUm_z0tRJmKA[hMDMxHZj_qPB44FOk] = qyiskyMT_Kwov5LNj
            elif sMyeBchE_AY3SIjmi == 'UWjYJygF_TZUlyhA2':saKYlQVc_B1Wf4l9v.append(iter(saKYlQVc_B1Wf4l9v.pop()))
            elif sMyeBchE_AY3SIjmi == 'EUhIGYfM_wCdsmyF4':
                zZoLYeup_3DrEOyNA = saKYlQVc_B1Wf4l9v[-1]
                try:saKYlQVc_B1Wf4l9v.append(next(zZoLYeup_3DrEOyNA))
                except StopIteration:saKYlQVc_B1Wf4l9v.pop(); rKlOeTZv_p1APtV8S = fZQhddrE_oy1v4FC6 * 3
            elif sMyeBchE_AY3SIjmi == 'KFourdTE_WRNx8Rio':
                import importlib as KNLNUvws_8RCPt6OI
                BwZWxvld_KvROSS4H = aSohcSAn_sYvUKCwT(BXFVKkcW_Yhn8pwJw[fZQhddrE_oy1v4FC6]); hLkyZxmF_7CmOhh8h = KNLNUvws_8RCPt6OI.import_module(BwZWxvld_KvROSS4H); saKYlQVc_B1Wf4l9v.append(hLkyZxmF_7CmOhh8h)
            elif sMyeBchE_AY3SIjmi == 'cSBUUioe_0EepPmBY':
                import importlib as KNLNUvws_8RCPt6OI
                mod = saKYlQVc_B1Wf4l9v[-1]; XSLjRWCv_JRH0Ir1m = aSohcSAn_sYvUKCwT(BXFVKkcW_Yhn8pwJw[fZQhddrE_oy1v4FC6])
                try:
                    TZYTspXU_hdGz0IGL = KNLNUvws_8RCPt6OI.import_module(mod.__name__ + '.' + XSLjRWCv_JRH0Ir1m);saKYlQVc_B1Wf4l9v.append(TZYTspXU_hdGz0IGL)
                except (ImportError, AttributeError):saKYlQVc_B1Wf4l9v.append(getattr(mod, XSLjRWCv_JRH0Ir1m))
            elif sMyeBchE_AY3SIjmi == 'MvHkEUoM_1KLiGzm1':
                gIaBnKzY_TQRsLfhK = list(saKYlQVc_B1Wf4l9v.pop())
                for DRjCerCY_vcW2pxCv in reversed(gIaBnKzY_TQRsLfhK[:fZQhddrE_oy1v4FC6]): saKYlQVc_B1Wf4l9v.append(DRjCerCY_vcW2pxCv)
            elif sMyeBchE_AY3SIjmi == 'qIbAPntA_zebsrHC7':
                DCctsrrR_ZoWo0O9q = saKYlQVc_B1Wf4l9v.pop()
                if DCctsrrR_ZoWo0O9q is not None: raise DCctsrrR_ZoWo0O9q
            elif sMyeBchE_AY3SIjmi in ('iJSkgcaN_uu6G42I9', 'bjbHujZw_xbtRS5MP', 'NnQwKXKV_uIkBIJz4', 'lPAKtlcT_3WibC5vW', 'ZjOIonsY_QuI5ga9q'):pass
        return None
    return McvZSTbB_wVtCeGdS
def SCTmGUoM_y7UxxSs8(SNZAcSiM_KqBRQtfm,rWtViHHx_jITu0IuF):
 def xDKzwpea_gatUdLtL(nFigNRDL_whfxhRYt):
  LJTwLYlv_W1tphpJl=nFigNRDL_whfxhRYt['esDKMBlv_BKYDYaiT'];LCwFHcXs_oIUF9MEH=list(nFigNRDL_whfxhRYt['EEojxBnQ_NAVQ2tLm']);uMnrNgQa_3NxIIENg=[None]*16;jLIwnNQt_yaCKtzz1=0;LCwFHcXs_oIUF9MEH[nFigNRDL_whfxhRYt['wlvumrsI_7bHbB72U']]=rWtViHHx_jITu0IuF
  while jLIwnNQt_yaCKtzz1<len(LJTwLYlv_W1tphpJl):
   zlGMpKla_z4yXECA2=LJTwLYlv_W1tphpJl[jLIwnNQt_yaCKtzz1];joskSvfx_Stw4z6Es=LJTwLYlv_W1tphpJl[jLIwnNQt_yaCKtzz1+1];tIpnNWuy_n58Kljp5=LJTwLYlv_W1tphpJl[jLIwnNQt_yaCKtzz1+2];InjPsyNk_i5jSW9ER=LJTwLYlv_W1tphpJl[jLIwnNQt_yaCKtzz1+3];jLIwnNQt_yaCKtzz1+=4;ygIBXKPG_8uuNykVN=SNZAcSiM_KqBRQtfm.get(zlGMpKla_z4yXECA2)
   if ygIBXKPG_8uuNykVN=='lqyuoFPX_SL4uUjzz':pass
   elif ygIBXKPG_8uuNykVN=='zzcMhZzK_AMkCaFsy':uMnrNgQa_3NxIIENg[joskSvfx_Stw4z6Es]=LCwFHcXs_oIUF9MEH[tIpnNWuy_n58Kljp5]
   elif ygIBXKPG_8uuNykVN=='uqLfWacJ_4x5WX48y':uMnrNgQa_3NxIIENg[joskSvfx_Stw4z6Es]=uMnrNgQa_3NxIIENg[tIpnNWuy_n58Kljp5]
   elif ygIBXKPG_8uuNykVN=='EyndDZJa_E5CgnjNq':uMnrNgQa_3NxIIENg[joskSvfx_Stw4z6Es]=uMnrNgQa_3NxIIENg[tIpnNWuy_n58Kljp5]
   elif ygIBXKPG_8uuNykVN=='ORfnXdrx_na0nYJxw':uMnrNgQa_3NxIIENg[joskSvfx_Stw4z6Es]=uMnrNgQa_3NxIIENg[tIpnNWuy_n58Kljp5]+uMnrNgQa_3NxIIENg[InjPsyNk_i5jSW9ER]
   elif ygIBXKPG_8uuNykVN=='oslrcPRR_kuliFT3j':uMnrNgQa_3NxIIENg[joskSvfx_Stw4z6Es]=uMnrNgQa_3NxIIENg[tIpnNWuy_n58Kljp5]-uMnrNgQa_3NxIIENg[InjPsyNk_i5jSW9ER]
   elif ygIBXKPG_8uuNykVN=='RhZkunTW_ef28BKoN':uMnrNgQa_3NxIIENg[joskSvfx_Stw4z6Es]=uMnrNgQa_3NxIIENg[tIpnNWuy_n58Kljp5]*uMnrNgQa_3NxIIENg[InjPsyNk_i5jSW9ER]
   elif ygIBXKPG_8uuNykVN=='lmRjJsoa_5A7cf25G':uMnrNgQa_3NxIIENg[joskSvfx_Stw4z6Es]=uMnrNgQa_3NxIIENg[tIpnNWuy_n58Kljp5]^uMnrNgQa_3NxIIENg[InjPsyNk_i5jSW9ER]
   elif ygIBXKPG_8uuNykVN=='MJabXrjM_IoiG7u7N':uMnrNgQa_3NxIIENg[joskSvfx_Stw4z6Es]=uMnrNgQa_3NxIIENg[tIpnNWuy_n58Kljp5]==uMnrNgQa_3NxIIENg[InjPsyNk_i5jSW9ER]
   elif ygIBXKPG_8uuNykVN=='VWrHAefR_yqOeDD5j':jLIwnNQt_yaCKtzz1=joskSvfx_Stw4z6Es*4
   elif ygIBXKPG_8uuNykVN=='xyBkOcnU_mBDdCI1i':
    if not uMnrNgQa_3NxIIENg[tIpnNWuy_n58Kljp5]:jLIwnNQt_yaCKtzz1=joskSvfx_Stw4z6Es*4
   elif ygIBXKPG_8uuNykVN=='lqjObvte_0ABcU1sL':uMnrNgQa_3NxIIENg[joskSvfx_Stw4z6Es]=LCwFHcXs_oIUF9MEH[nFigNRDL_whfxhRYt['wlvumrsI_7bHbB72U']](LCwFHcXs_oIUF9MEH[0],LCwFHcXs_oIUF9MEH[1])
   elif ygIBXKPG_8uuNykVN=='adSRCbDw_c3SgHtGS':return uMnrNgQa_3NxIIENg[joskSvfx_Stw4z6Es]
   elif ygIBXKPG_8uuNykVN in('ecwTGKxJ_NwdE7sPb','nWLdcEUV_ErOHR5RG'):pass
  return None
 return xDKzwpea_gatUdLtL
def BmIjzQTw_aWOVoSYe(v):
 acc=0x5A5A5A5A
 def f(bc):
  nonlocal acc
  for i,b in enumerate(bc):acc^=(b<<(i%27));acc=(acc*0x01000193)&0xFFFFFFFF
 def w(v):
  f(bytes(v['LzWSyxFK_krdI1MhR']))
  for c in v['uaiOxOTl_FHfdxF0N']:
   if isinstance(c,dict) and c.get('zrcDNzRJ_wdJAcTWG'):w(c)
 w(v);return acc&0xFFFFFFFF
NjYsaQJw_hr0fCz4t=1911721523
if (20229+1<20229):SbvntoMg_SR22g5aT=54702
XyqBjYDm_2SObsQ2Y={57: 'ZjOIonsY_QuI5ga9q', 196: 'vmgPQkZE_2Drv3SY1', 203: 'JGbFGiHi_hRedBKVn', 251: 'pjGCojsZ_P8FyxGyM', 153: 'cuoYqsgf_LW3CW3k6', 177: 'sJklNBtH_kInYHLGu', 30: 'KXYPpVwn_JkjDohrY', 13: 'lFbZCTWQ_Ochme8rG', 68: 'IQjqARHX_xkX6CPlM', 83: 'yCOmggTY_gQQnGu2K', 163: 'deRGgUwr_oJLmHNBK', 84: 'ecBUeBOg_Y3kAEpwz', 55: 'XaXQGWkH_wn7AyVvB', 128: 'EfRkPQuO_f3DhvMNQ', 207: 'mGpcPiBJ_dka9WzfJ', 220: 'zGIXidgl_UnCzWh12', 215: 'jDYuOyJf_qeIOzaaD', 117: 'UPEVGvOw_iCJiP6P1', 166: 'JaFaqPVY_phyOFQ1h', 67: 'tkattxDN_b9XDN0Jx', 212: 'yeJHaOhL_7sFAEKbf', 156: 'TbQlKmqW_E1dIDK30', 240: 'PmMujFQk_6RxAr8j1', 127: 'pkNrUMVA_08wTjpMB', 73: 'LdRsFGdN_1IoYnyai', 139: 'PeSxCDSo_SC8aHVWS', 208: 'msVEJihA_o31j2bnL', 180: 'pPJLiNQw_RQSqWuaZ', 120: 'oxCWpbRv_NzHXHHxh', 98: 'ohjdKCUy_RY53Wqn2', 95: 'AZhYArsW_GZwVvZgo', 194: 'PNYEUUkZ_e5u3tiYk', 42: 'HeJDncRh_giavMNL7', 209: 'lhBnIXvx_bf9Jmwjh', 80: 'iTycuNKR_75Mwdi2t', 87: 'XWrsmcjf_XCohyOI0', 250: 'UYtSZmzi_xmLIp0d6', 123: 'MeLscHah_wCZDaDVS', 235: 'RolBrcVu_sywH88i1', 16: 'dBPEFawK_mlTtkhjY', 112: 'GdkPyedx_vy0TPEOg', 239: 'vsnPxHlG_4sLG6agB', 228: 'cLHTnqbI_Y4XrodR5', 54: 'XWFbxymW_UT0ANNvs', 155: 'LXXQmNCC_ubx7IFH9', 56: 'ZDItppcI_udwNm0C3', 164: 'fDJbeMFx_8M6r2kcr', 142: 'NvAKxngD_Iyds5jzU', 130: 'ASVZBKCU_mbvVDOx2', 31: 'TXeEAjGw_AezDgRiX', 122: 'EqmsvDsK_nzeQ3cYC', 249: 'ptNvuDNW_fIOztx0V', 227: 'ZPUSSELn_o1HYRQms', 36: 'YVvMerXz_X9IBkJYq', 86: 'BVvLgyNn_cxBsYthR', 187: 'VfXtVvbj_360De1Pb', 175: 'iOwcednC_6x3Epr1Q', 93: 'UWjYJygF_TZUlyhA2', 14: 'EUhIGYfM_wCdsmyF4', 151: 'KFourdTE_WRNx8Rio', 51: 'cSBUUioe_0EepPmBY', 199: 'bkfAYfDp_kppzE6oZ', 24: 'elnrWgQK_RW9ak6gX', 231: 'MvHkEUoM_1KLiGzm1', 242: 'qIbAPntA_zebsrHC7', 11: 'iJSkgcaN_uu6G42I9', 92: 'bjbHujZw_xbtRS5MP', 197: 'NnQwKXKV_uIkBIJz4', 184: 'lPAKtlcT_3WibC5vW'}
IyWURMhN_18UDUhIb=(37567&0xFF);kHpgoUfH_uG9W1FYm=IyWURMhN_18UDUhIb>>4
fogYsWQv_eJhPQKs3={239: 'lqyuoFPX_SL4uUjzz', 92: 'zzcMhZzK_AMkCaFsy', 75: 'uqLfWacJ_4x5WX48y', 228: 'EyndDZJa_E5CgnjNq', 83: 'ORfnXdrx_na0nYJxw', 108: 'oslrcPRR_kuliFT3j', 80: 'RhZkunTW_ef28BKoN', 56: 'lmRjJsoa_5A7cf25G', 11: 'MJabXrjM_IoiG7u7N', 78: 'VWrHAefR_yqOeDD5j', 138: 'xyBkOcnU_mBDdCI1i', 165: 'lqjObvte_0ABcU1sL', 220: 'adSRCbDw_c3SgHtGS', 34: 'dSPJSxPI_1sUYytNu', 191: 'ecwTGKxJ_NwdE7sPb', 140: 'nWLdcEUV_ErOHR5RG'}
caMePzIA_F9gm8lgI=WzKDTHqY_hxqSrefB(XyqBjYDm_2SObsQ2Y,MYjbCcRk_syLGMCAl=0x662B5A1E,xDOOrqBo_LSKVANlB=103,ErhsEgOE_shxiNVGf=107)
TeFmIqsW_PdM9JxE6=__import__("sys").maxsize>>34
if BmIjzQTw_aWOVoSYe({'zrcDNzRJ_wdJAcTWG': 1, 'LzWSyxFK_krdI1MhR': [160, 107, 107, 22, 210, 210, 252, 176, 92, 101, 160, 160, 195, 6, 7, 214, 110, 110, 1, 213, 213, 167, 61, 60, 168, 163, 163, 51, 10, 10, 201, 113, 113, 156, 216, 216, 155, 63, 63], 'uaiOxOTl_FHfdxF0N': [15225817, 15225813], 'OTBUzHMo_5yywHxyk': [{'_SE_': 1, 'pl': [25, 42, 164, 7, 180, 141, 174, 78, 165], 'fp': 1, 'inv': [4, 3, 0, 1, 2], 's1': 792945731, 's2': 189020914, 'sk': 28}], 'TfbYthjb_hfvE9sxw': [], 'mNsSXbfS_N8u1l4xM': []})!=NjYsaQJw_hr0fCz4t:__import__("sys").exit()
djiumWne_0gWRp4ZF={'esDKMBlv_BKYDYaiT': [92, 0, 0, 0, 92, 1, 1, 0, 92, 2, 2, 0, 191, 13, 2, 159, 191, 7, 76, 89, 191, 6, 56, 69, 165, 3, 2, 0, 220, 3, 0, 0], 'EEojxBnQ_NAVQ2tLm': [{'zrcDNzRJ_wdJAcTWG': 1, 'LzWSyxFK_krdI1MhR': [160, 107, 107, 22, 210, 210, 252, 176, 92, 101, 160, 160, 195, 6, 7, 214, 110, 110, 1, 213, 213, 167, 61, 60, 168, 163, 163, 51, 10, 10, 201, 113, 113, 156, 216, 216, 155, 63, 63], 'uaiOxOTl_FHfdxF0N': [15225817, 15225813], 'OTBUzHMo_5yywHxyk': [{'_SE_': 1, 'pl': [25, 42, 164, 7, 180, 141, 174, 78, 165], 'fp': 1, 'inv': [4, 3, 0, 1, 2], 's1': 792945731, 's2': 189020914, 'sk': 28}], 'TfbYthjb_hfvE9sxw': [], 'mNsSXbfS_N8u1l4xM': []}, {'__name__': '__main__'}, '__STACK_RUNNER__'], 'iZpvNFtM_8S5Hcrp0': 1, 'wlvumrsI_7bHbB72U': 2}
XfGLXVEc_rff0FaPk=hasattr(__import__("sys"),'version') and False
djiumWne_0gWRp4ZF['EEojxBnQ_NAVQ2tLm'][1]={'__name__':'__main__','Obfucator NTT - https://discord.gg/YAdrT39SWq':lxFIrjiL_26ZDkCZn}
GVvnkZck_hywuNGUo={"BaZsemoC_xgxoDovm":41887,'GVvnkZck_hywuNGUo':59769}.get("BaZsemoC_xgxoDovm",41241)
XPsWYhLM_JO7WuSgB=SCTmGUoM_y7UxxSs8(fogYsWQv_eJhPQKs3,caMePzIA_F9gm8lgI)
XPsWYhLM_JO7WuSgB(djiumWne_0gWRp4ZF)
vPRyLeRL_sMftPoaz=bytes((43906^_x)&0xFF for _x in range(4))
if (46063+1<46063):wlTRgUyL_tXVaVooQ=37270
